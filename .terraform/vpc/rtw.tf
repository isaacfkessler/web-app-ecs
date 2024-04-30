# Public RT 1
resource "aws_route_table" "pub-rt-1a" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }
  tags = {
    Name = "${var.projectname}-rt-public-1a"
  }
}

# Public RT 2
resource "aws_route_table" "pub-rt-1b" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }
  tags = {
    Name = "${var.projectname}-rt-public-1b"
  }
}

# Private RT 1
resource "aws_route_table" "pvt-rt-1a" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.public_1a
  }

  tags = {
    Name = "${var.projectname}-rt-private-1a"
  }
}
# Private RT 2
resource "aws_route_table" "pvt-rt-2" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.public_1b
  }

  tags = {
    Name = "${var.projectname}-rt-private-1b"
  }
}
