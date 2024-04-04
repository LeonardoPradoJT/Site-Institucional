data "aws_caller_identity" "current" {}

data "aws_vpc" "vpc-01" {
  id         = var.vpc_id
  cidr_block = var.vpc_cidr_block
}

data "aws_subnet" "publica" {
  id = var.publica
}

data "aws_subnet" "privada" {
  id = var.privada
}

data "aws_ami" "changer" {
  id = var.ami
}