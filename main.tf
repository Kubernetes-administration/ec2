provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "instance" {
  ami             = "ami-08c40ec9ead489470"
  instance_type   = "t2.micro"
  security_groups = ["default"]
  key_name        = "myEC2Key"
  count           = 3 #[0, 1, 2]

  tags = {
    Name = "EC2-${count.index}" # EC2-0, EC2-1, EC2-2
  }
}