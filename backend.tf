terraform {
  backend "s3" {
    # s3 bucket name!
    bucket         = "terraform-tfstate-s3bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-central-1"
    # locking state in dynmodb!
    dynamodb_table = "tfstate-statelocked-dynmodb"
    encrypt        = true
  }
}