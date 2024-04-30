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
    gateway_id = aws_nat_gateway.public_1a.id
  }

  tags = {
    Name = "${var.projectname}-rt-private-1a"
  }
}
# Private RT 2
resource "aws_route_table" "pvt-rt-1b" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.public_1b.id
  }

  tags = {
    Name = "${var.projectname}-rt-private-1b"
  }
}


resource "aws_route_table_association" "public-subnet-rta-a" {
  subnet_id      = aws_subnet.public_1a.id
  route_table_id = aws_route_table.pub-rt-1a.id
}

resource "aws_route_table_association" "public-subnet-rta-b" {
  subnet_id      = aws_subnet.public_1b.id
  route_table_id = aws_route_table.pub-rt-1b.id
}

resource "aws_route_table_association" "private-subnet-rta-a" {
  subnet_id      = aws_subnet.private_1a.id
  route_table_id = aws_route_table.pvt-rt-1a.id
}

resource "aws_route_table_association" "private-subnet-rta-b" {
  subnet_id      = aws_subnet.private_1b.id
  route_table_id = aws_route_table.pvt-rt-1b.id
}