output "instance_ids" {
  description = "list of EC2 instance ids"
  value = {for k,v in aws_instance.ec2_instance: k => v.id}
}

output "public_ips" {
  description = "list of EC2 instance public ips"
  value = {for k,v in aws_instance.ec2_instance: k => v.public_ip}
}