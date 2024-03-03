variable "env" {
  description = "Your environment name here[Example: Dev / Prod]."
  type        = string
}

variable "vpc_cidr_block" {
  description = "Main CIDR block range for the VPC."
  type        = string
  default     = "YourCIDR"
}

variable "azs" {
  description = "AZs for subnets (Availability Zones)."
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnets CIDR block ranges."
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnets CIDR block ranges."
  type        = list(string)
}

variable "private_subnet_tags" {
  description = "Tags for Private subnets"
  type        = map(any)
}

variable "public_subnet_tags" {
  description = "Tags for Public subnets"
  type        = map(any)
}
