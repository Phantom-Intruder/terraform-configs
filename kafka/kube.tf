provider "kubernetes" {
  config_path = var.kube_config
}

resource "kubernetes_namespace" "kafka" {
  metadata {
    name = var.namespace
  }
}

resource "null_resource" "deploy-yaml" {

  provisioner "local-exec" {
    command = "kubectl apply -n kafka -f https://raw.githubusercontent.com/strimzi/strimzi-kafka-operator/main/examples/kafka/kafka-persistent-single.yaml"
  }
}
