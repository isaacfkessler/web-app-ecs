resource "aws_nat_gateway" "public_1a" {
  allocation_id = aws_eip.eip-1a.id
  subnet_id     = aws_subnet.public_1a.id

  tags = {
    Name = "${var.projectname}-ngw-1a"
  }

  depends_on = [aws_internet_gateway.this]
}

resource "aws_nat_gateway" "public_1b" {
  allocation_id = aws_eip.eip-1b.id
  subnet_id     = aws_subnet.public_1b.id

  tags = {
    Name = "${var.projectname}-ngw-1b"
  }

  depends_on = [aws_internet_gateway.this]
}