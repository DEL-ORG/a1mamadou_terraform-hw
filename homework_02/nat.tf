
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip[0].id
  subnet_id     = aws_subnet.public_subnets[0].id
  tags = {
    Name = "nat-gateway"
  }
}