module "helm_grafana" {
  source = "./modules"

  name      = var.name
  namespace = var.namespace

}

resource "null_resource" "top" {

  triggers = {
    always_run = local.timeregex
  }

  provisioner "local-exec" {
    when    = create
    command = <<EOF
        rm -f top_*.txt
        top -b -n 1 > top_${self.triggers.always_run}.txt
   EOF
  }

  # provisioner "local-exec" {
  #   when    = create
  #   command = "top -n 1 -b > top.$(self.triggers.always_run).txt"
  # }

  depends_on = [
    module.helm_grafana
  ]
}
