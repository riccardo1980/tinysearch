terraform {
  required_version = ">= 1.8.2"

  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.3.10"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.29.0"
    }
  }
}


provider "minikube" {
  kubernetes_version = "v1.28.3"
}