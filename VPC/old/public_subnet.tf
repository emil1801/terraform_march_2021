resource "aws_subnet" "public_subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_cidr1
  availability_zone = data.aws_availability_zones.available.names[0]
  tags              = var.tags
}
resource "aws_subnet" "public_subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_cidr2
  availability_zone = data.aws_availability_zones.available.names[1]
  tags              = var.tags
}
resource "aws_subnet" "public_subnet3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_cidr3
  availability_zone = data.aws_availability_zones.available.names[2]
  tags              = var.tags
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.gw.id
  }
  tags = var.tags
}

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public3" {
  subnet_id      = aws_subnet.public_subnet3.id
  route_table_id = aws_route_table.public.id
}
