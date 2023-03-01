provider "kubernetes" {
  config_context_cluster = "minikube"
  config_path            = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_context_cluster = "minikube"
    config_path            = "~/.kube/config"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
