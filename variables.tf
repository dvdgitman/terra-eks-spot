# Variables for providing to module fixture codes

### aws credential

### network
variable "aws_region" {
  description = "The aws region to deploy"
  type        = string
  default     = "eu-west-2"
}

variable "azs" {
  description = "A list of availability zones for the vpc to deploy resources"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "subnets" {
  description = "The list of subnets to deploy an eks cluster"
  type        = list(string)
  default     = null
}

variable "node_groups" {
  description = "Node groups definition"
  default     = []
}

variable "managed_node_groups" {
  description = "Amazon managed node groups definition"
  default     = []
}

variable "fargate_profiles" {
  description = "Amazon Fargate for EKS profiles"
  default     = []
}

### description
variable "name" {
  description = "The logical name of the module instance"
  type        = string
  default     = "eks-terra"
}

### tags
variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}

variable "kubernetes_version" {
  description = "kub version"
}