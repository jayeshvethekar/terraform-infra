provider "aws" {
  region = "us-west-2"
}
module "network" {
    source = "./networking"
    vpc_name = "myvpc"
    subnet_cidr = "10.0.1.0/24"
    vpc_cidr = "10.0.0.0/16"
    subnet_name = "my_subnet"
  
}

module "ec2_instances" {
  source = "./terraform-aws-ec2"
  instance_count = 5
  instance_ami = "ami-0a897ba00eaed7398"
  instance_type = "t2.micro"
  tag_prefix = "myinstance"
  subnet_id = module.network.subnet_id

  depends_on = [ module.network ]
}