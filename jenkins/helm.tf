provider "helm" {
  kubernetes {
    config_path = var.kube_config
  }
}

resource "helm_release" "jenkins" {
  chart      = "jenkins"
  name       = "jenkins"
  namespace  = var.namespace
  repository = "https://charts.jenkins.io"

  set {
    name  = "controller.serviceType"
    value = var.service_type
  }
}
