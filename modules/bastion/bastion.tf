resource "aws_instance" "bastion" {
  ami                         = "ami-0faab6bdbac9486fb"
  instance_type               = "t2.micro"
  subnet_id                   = var.public_subnet
  associate_public_ip_address = true
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.sg_id]

  tags = {
    Name = "BastionHost"
  }
}

