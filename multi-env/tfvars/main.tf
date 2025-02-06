resource "aws_instance" "name" {
  ami = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = merge(
    var.common_tags,
    { 
        Name = "${var.project}-${var.env}-${var.instances[count.index]}"
    }
  )
}

resource "aws_security_group" "sg" {
    name = "${var.project}-${var.env}"
  egress {
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "-1"
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}