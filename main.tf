provider "aws" {
  region = "us-east-1"
}



module "ec2_instance" {
source = "./module/ec2_instance"
ami_id = "ami-0f3caa1cf4417e51b"
instance_type = "t3.micro"
subnet_cd = "subnet-01ed0bf481ab409a2"
}