# Use eks module for cluster
module "eks" {
  source              = "Young-ook/eks/aws"
  name                = var.name
  tags                = var.tags
  managed_node_groups = var.managed_node_groups
  node_groups         = var.node_groups
  fargate_profiles    = var.fargate_profiles
}



//data "aws_eks_cluster" "cluster" {
//  name = data.terraform_remote_state.eks.outputs.cluster_id
//}
//
//data "aws_eks_cluster_auth" "cluster" {
//  name = data.terraform_remote_state.eks.outputs.cluster_id
//}


