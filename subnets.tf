resource "aws_subnet" "public_subnet_01" {
  vpc_id                 = aws_vpc.my_vpc.id
  cidr_block             = "10.0.1.0/24"
  availability_zone      = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "tfsubred-public01"
  }
}

resource "aws_subnet" "private_subnet_01" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-2a"

  tags = {
    Name = "tfsubred-private01"
  }
}

resource "aws_subnet" "public_subnet_02" {
  vpc_id                 = aws_vpc.my_vpc.id
  cidr_block             = "10.0.3.0/24"
  availability_zone      = "us-east-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = "tfsubred-public02"
  }
}

resource "aws_subnet" "private_subnet_02" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-2b"

  tags = {
    Name = "tfsubred-private02"
  }
}
