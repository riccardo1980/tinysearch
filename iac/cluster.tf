resource "minikube_cluster" "docker" {
  driver         = "docker"
  cluster_name   = "terraform-provider-minikube-acc-docker"
  nodes          = 3
  # apiserver_port = 8443
  addons = [
    "dashboard",
    "volumesnapshots",
    "ingress",
    "csi-hostpath-driver",
    "metrics-server"
  ]
}


provider "kubernetes" {
  host = minikube_cluster.docker.host

  client_certificate     = minikube_cluster.docker.client_certificate
  client_key             = minikube_cluster.docker.client_key
  cluster_ca_certificate = minikube_cluster.docker.cluster_ca_certificate
}


# Multi-node minikube clusters are having issues with PVC:
# error: 
#   Elastic: "failed to obtain node locks, tried [/usr/share/elasticsearch/data]; maybe these locations are not writable or multiple nodes were started on"
# see: https://github.com/kubernetes/minikube/issues/12360#issuecomment-1430243861
# TL;DR: 
# 1. adding "volumesnapshots" and "csi-hostpath-driver" instead of  "default-storageclass" and "storage-provisioner"
# 2. using "csi-hostpath-sc" as default storage class instead of "standard"

resource "null_resource" "csi_hostpath_sc_patch" {
  provisioner "local-exec" {
    command = "kubectl patch storageclass csi-hostpath-sc -p '{\"metadata\": {\"annotations\":{\"storageclass.kubernetes.io/is-default-class\":\"true\"}}}'"
  }
  depends_on = [ minikube_cluster.docker ]
}

resource "null_resource" "standard_patch" {
  provisioner "local-exec" {
    command = "kubectl patch storageclass standard -p '{\"metadata\": {\"annotations\":{\"storageclass.kubernetes.io/is-default-class\":\"false\"}}}'"
  }
  depends_on = [ minikube_cluster.docker ]
}