provider "kubernetes" {
  config_path = var.kube_config
}

resource "kubernetes_namespace" "kafka" {
  metadata {
    name = var.namespace
  }
}

locals {
  k_type = (var.kube_type == "minikube" ? "minikube kubectl --" : "kubectl")
}

resource "null_resource" "deploy-yaml" {

  provisioner "local-exec" {
    command = "${var.kube_type == "minikube" ? "minikube kubectl --" : "kubectl"} apply -n kafka -f https://raw.githubusercontent.com/strimzi/strimzi-kafka-operator/main/examples/kafka/kafka-persistent-single.yaml"
  }
}
