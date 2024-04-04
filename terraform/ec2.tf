resource "aws_instance" "pnt" {
  ami                         = data.aws_ami.changer.id
  instance_type               = "t2.micro"
  key_name                    = "changer"
  subnet_id                   = data.aws_subnet.private_1.id
  vpc_security_group_ids      = [aws_security_group.pnt.id]
  associate_public_ip_address = false

  tags = merge(
    local.common_tags,
    {
      Name = "vinpnt001"
    },
  )
}