provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./module/ec2_instance"
}