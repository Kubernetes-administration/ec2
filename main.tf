resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type
  security_groups = var.security_groups
  key_name = var.key_name

  tags = {
    Name = "EC2"
  }
}