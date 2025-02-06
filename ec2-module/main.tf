resource "aws_instance" "ec2" {
  ami = var.ami
  vpc_security_group_ids = [var.sg_id]
 
  instance_type = "t3.small"

tags = var.tags
}


resource "aws_security_group" "sg" {
  name = "module_sg"
  egress {
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "-1"
  }
  ingress {
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp"
  }
}