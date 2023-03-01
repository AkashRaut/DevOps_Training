variable "namespace" {
  type        = string
  description = "Kubernetes Namespace for grafana"
  default     = ""
}

variable "name" {
  type        = string
  description = "Helm Release Name for grafana"
  default     = ""
}
