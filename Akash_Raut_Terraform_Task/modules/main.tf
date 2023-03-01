resource "null_resource" "start_minikube" {
  provisioner "local-exec" {
    command = "minikube start"
  }
}


resource "helm_release" "grafana" {
  name      = var.name
  chart     = "./charts/grafana"
  namespace = var.namespace

  create_namespace = true
  wait             = true

  set {
    name  = "service.type"
    value = "NodePort"
  }

  set {
    name  = "replicas"
    value = "1"
  }
}
