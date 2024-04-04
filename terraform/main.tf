module "ec2_complete" {

  name = "Changer"

  ami                         = ami-080e1f13689e07408
  instance_type               = "t2.micro" 
  subnet_id                   = data.aws_subnet.publica.id
  vpc_security_group_ids      = 
  associate_public_ip_address = true
  disable_api_stop            = false

  hibernation = true
  cpu_options = {
    core_count       = 2
    threads_per_core = 1
  }
  enable_volume_tags = false
  root_block_device = [
    {
      encrypted   = true
      volume_type = "gp3"
      throughput  = 200
      volume_size = 50
      tags = {
        Name = "my-root-block"
      }
    },
  ]



  tags = local.tags
}