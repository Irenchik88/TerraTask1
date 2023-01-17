resource "aws_vpc" "task1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = var.tags

}
resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.task1.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags = var.tags

}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.task1.id
  cidr_block        = "10.0.16.0/20"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = "true"
  tags              = var.tags

}

resource "aws_subnet" "subnet3" {
  vpc_id            = aws_vpc.task1.id
  cidr_block        = "10.0.128.0/20"
  availability_zone = "us-east-1c"
  tags              = var.tags
  map_public_ip_on_launch = "true"
}



resource "aws_default_route_table" "r" {
  default_route_table_id = aws_vpc.r.default_route_table_id
  route = [0.0.0.0/0]

  tags = {
    Name = "example"
  }
}