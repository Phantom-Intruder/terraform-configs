variable "kube_config" {
  type    = string
  default = "~/.kube/config"
}

variable "namespace" {
  type    = string
  default = "jenkins"
}

variable "service_type" {
  type        = string
  description = "For minikube, set this to NodePort, elsewhere use LoadBalancer"
  validation {
    condition     = var.service_type == "NodePort" || var.service_type == "LoadBalancer"
    error_message = "Should be either NodePort or LoadBalancer"
  }
}
