resource "aws_instance" "instance1" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet1.id
  vpc_security_group_ids      = [aws_security_group.ssh-sg-vpc.id, aws_security_group.http-sg-vpc.id]
  key_name                    = "bastion-key2"
  associate_public_ip_address = true
  user_data                   = <<EOF
    #!/bin/bash
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello, world" > /var/www/html/index.html 
  EOF

  tags = var.tags

}
resource "aws_instance" "instance2" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet2.id

  vpc_security_group_ids      = [aws_security_group.ssh-sg-vpc.id, aws_security_group.http-sg-vpc.id]
  key_name                    = "bastion-key2"
  associate_public_ip_address = true

  user_data = <<EOF
    #!/bin/bash
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello, world" > /var/www/html/index.html 
  EOF

  tags = var.tags

}
resource "aws_instance" "instance3" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet3.id

  key_name                    = "bastion-key2"
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.ssh-sg-vpc.id, aws_security_group.http-sg-vpc.id]


  user_data = <<EOF
    #!/bin/bash
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello, world" > /var/www/html/index.html 
  EOF

  tags = var.tags

}
