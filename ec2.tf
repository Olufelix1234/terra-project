provider "aws" {
region = "us-east-1"

## Creating an AWS EC2 Instance
resource "aws_instance" "ser-instance" {
# Instance Configuration 
ami  = var.ami
instance_type  = var.instance_type
key_name  = var.key
# Instance Tagsid
tags  = {
Name = "${var.instance_name}"
}
}
