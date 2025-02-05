variable "instance_count" {
  description = "count of the instances"
  type = number
  default = 5
}

variable "instance_ami" {
  description = "ami of the instances"
  type = string
  default = "ami-0a897ba00eaed7398"
}

variable "instance_type" {
  description = "type of the instances"
  type = string
  default = "t2.micro"
}

variable "tag_prefix" {
    description = "tag prefix"
    type = string
    default = "myinstance"
  
}

variable "subnet_id" {
    description = "subnet_id"
    type = string
  
}