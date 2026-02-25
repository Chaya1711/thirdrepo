provider "aws" {
  region = "us-east-1"
}   
resource "aws_instance" "excdample" {
  ami = var.ami_id
  instance_type = var.instance_type #type
  subnet_id = var.subnet_cd
}

#resource "aws_s3_bucket" "s3_bucket" {
 # bucket = "my-terraform-chaya-state-bucket"
#}