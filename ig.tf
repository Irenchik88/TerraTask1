resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.task1.id

  tags = var.tags

}
