variable "env" {
  description = "Your environment name here[Example: Dev / Prod]."
  type        = string
}

variable "eks_name" {
  description = "Name of your cluster."
  type        = string
}

variable "enable_cluster_autoscaler" {
  description = "True:[EKS will have autoscaler enable] False:[EKS will have autoscaler disabled]"
  type        = bool
  default     = false
}

variable "cluster_autoscaler_helm_verion" {
  description = "Helm verion Helm version of the Cluster AS"
  type        = string
}

variable "openid_provider_arn" {
  description = "Openid ARN"
  type        = string
}
