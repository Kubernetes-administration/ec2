provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "instance" {
  ami             = "ami-08c40ec9ead489470"
  instance_type   = "t2.micro"
  security_groups = ["default"]
  key_name        = "myEC2Key"

  tags = {
    Name = "EC2"
  }
}