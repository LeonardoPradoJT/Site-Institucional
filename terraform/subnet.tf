resource "aws_subnet" "subnet-publica" {
  vpc_id     = aws_vpc.vpc-01.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "subnet-privada" {
  vpc_id     = aws_vpc.vpc-01.id
  cidr_block = "10.0.0.128/24"

  tags = {
    Name = "privada"
  }
}