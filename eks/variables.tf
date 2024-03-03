variable "env" {
  description = "Your environment name here[Example: Dev / Prod]."
  type        = string
}

variable "eks_version" {
  description = "Configures Kubernetes master version."
  type        = string
}

variable "eks_name" {
  description = "Name of your cluster."
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs list, ensure there are at least two/2 different availability zones."
  type        = list(string)
}

variable "node_iam_policies" {
  description = "IAM policies that will be attached to the EKS-managed nodes."
  type        = map(any)
  default = {
    1 = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
    2 = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
    3 = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    4 = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
    5 = "arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy"
    6 = "arn:aws:iam::aws:policy/AmazonEKSForFargateServiceRolePolicy"
  }
}

variable "node_groups" {
  description = "Node groups for EKS."
  type        = map(any)
}

variable "enable_irsa" {
  description = "Determines whether to create an OpenID Connect Provider for EKS to enable IRSA"
  type        = bool
  default     = true
}
