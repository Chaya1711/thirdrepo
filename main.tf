provider "aws" {
  region = "us-east-1"
}



module "ec2_instance" {
source = "./module/ec2_instance"
ami_id = var.ami_id
instance_type = var.instance_type #type
subnet_cd = var.subnet_cd
}
output "public-ip-address" {
  value = module.ec2_instance.public-ip-address
}