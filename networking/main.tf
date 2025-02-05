resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "mysubnet" {
  cidr_block = var.subnet_cidr
  vpc_id = aws_vpc.vpc.id
  depends_on = [ aws_vpc.vpc ]

  tags = {
    Name = var.subnet_name
  }
  
}