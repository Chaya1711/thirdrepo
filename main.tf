provider "aws" {
  region = "us-east-1"
}   
resource "aws_instance" "excdample" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_cd
}
terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key = "chaya/terraform.tfstate"
    region = "us-east-1"
  }
}