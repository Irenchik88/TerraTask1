resource "aws_security_group" "ssh-sg-vpc" {
  name        = "ssh-sg-vpc"
  vpc_id      = aws_vpc.task1.id
  description = "Allow SSH inbound traffic my vpc"

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "var.tags"
  }
}

resource "aws_security_group" "http-sg-vpc" {
  name        = "http-sg-vpc"
  vpc_id      = aws_vpc.task1.id
  description = "Allow HTTP inbound traffic to my vpc"

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "var.tags"
  }
}
