data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# EC2 Instance
resource "aws_instance" "web_server" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = "t3.micro"
  subnet_id              = var.sn
  vpc_security_group_ids = var.sg
  key_name               = var.key_name != "" ? var.key_name : null

  tags = {
    Name = "demo-ec2"
  }
}
