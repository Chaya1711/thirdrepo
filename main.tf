provider "aws" {
  region = "us-east-1"
}   
resource "aws_instance" "excdample" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_cd
}

resource "aws_s3_bucket" "state-bucket" {
  bucket = "my-terraform-state-bucket"
}