aws_region = "eu-central-1"
azs        = ["eu-central-2a", "eu-central-2b", "eu-central-2c"]
name       = "eks-spot-terra1"

tags = {
  env  = "dev"
  test = "spot1"
}



node_groups = [
  {
    name           = "spot"
    min_size      = 1
    max_size      = 3
    desired_size  = 1
    instance_type = "t3.large"
    instances_distribution = {
      spot_allocation_strategy = "lowest-price"
      spot_max_price           = "0.036"
    }
  }
]