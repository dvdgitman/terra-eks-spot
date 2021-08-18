terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-tfstate-s3bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-central-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "tfstate-statelocked-dynmodb"
    encrypt        = true
  }
}