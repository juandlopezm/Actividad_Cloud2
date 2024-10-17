resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_gateway.id
  }

  tags = {
    Name = "tf-tb-public"
  }
}

resource "aws_route_table_association" "public_route_association_01" {
  subnet_id      = aws_subnet.public_subnet_01.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_route_association_02" {
  subnet_id      = aws_subnet.public_subnet_02.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "tf-tb-private"
  }
}

resource "aws_route_table_association" "private_route_association_01" {
  subnet_id      = aws_subnet.private_subnet_01.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_route_association_02" {
  subnet_id      = aws_subnet.private_subnet_02.id
  route_table_id = aws_route_table.private_route_table.id
}
