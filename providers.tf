# Use module for cluster
provider "helm" {
  kubernetes {
    host                   = module.eks.helmconfig.host
    token                  = module.eks.helmconfig.token
    cluster_ca_certificate = base64decode(module.eks.helmconfig.ca)
    version = "~> 1.21"
    exec {
      api_version = "client.authentication.k8s.io/v1alpha1"
      args        = ["eks", "get-token", "--cluster-name", var.name]
      command     = "aws"
    }
  }
}

# Download AWS provider from hashicorp
provider "aws" {
  region = var.aws_region
  profile = "default"
}

