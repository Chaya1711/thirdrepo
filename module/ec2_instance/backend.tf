terraform {
  backend "s3" {
    bucket = "my-terraform-chaya-state-bucket"
    key = "chaya/terraform.tfstate"
    region = "us-east-1"
  }
}