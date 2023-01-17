resource "aws_lb" "lb-task1" {
  name               = "lb-task1"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ssh-sg-vpc.id]
  subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id, aws_subnet.subnet3.id]


  tags = var.tags

}
