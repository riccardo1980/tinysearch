resource "minikube_cluster" "docker" {
  driver       = "docker"
  cluster_name = "terraform-provider-minikube-acc-docker"
  nodes        = 3
  addons = [
    "dashboard",
    "default-storageclass",
    "ingress",
    "storage-provisioner",
    "metrics-server"
  ]
}

provider "kubernetes" {
  host = minikube_cluster.docker.host

  client_certificate     = minikube_cluster.docker.client_certificate
  client_key             = minikube_cluster.docker.client_key
  cluster_ca_certificate = minikube_cluster.docker.cluster_ca_certificate
}
