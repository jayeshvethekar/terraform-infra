locals {
  instance_names = [for i in range(var.instance_count): "${var.tag_prefix}-${i +1}"
   ]
}

resource "aws_instance" "ec2_instance" {
  for_each = toset(local.instance_names)
  ami = var.instance_ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  tags = {
    Name = each.key
  }

}