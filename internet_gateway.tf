resource "aws_internet_gateway" "my_gateway" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "terraform_gateway"
  }
}
