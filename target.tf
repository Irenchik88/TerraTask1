resource "aws_lb_target_group" "target" {
  name     = "target"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.task1.id
  tags     = var.tags
}
resource "aws_lb_target_group_attachment" "instance1" {
  target_group_arn = aws_lb_target_group.target.arn
  target_id        = aws_instance.instance1.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "instance2" {
  target_group_arn = aws_lb_target_group.target.arn
  target_id        = aws_instance.instance2.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "instance3" {
  target_group_arn = aws_lb_target_group.target.arn
  target_id        = aws_instance.instance3.id
  port             = 80

}
