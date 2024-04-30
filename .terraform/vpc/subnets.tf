resource "aws_subnet" "public_1a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.cidr_vpc, 8, count.index)

  tags = {
    Name = "${var.projectname}-public-subnet-1a"
  }
}

resource "aws_subnet" "public_1b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.cidr_vpc, 8, count.index + 1)

  tags = {
    Name = "${var.projectname}-public-subnet-1b"
  }
}

resource "aws_subnet" "private_1a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.cidr_vpc, 8, count.index + 2)

  tags = {
    Name = "${var.projectname}-private-subnet-1a"
  }
}

resource "aws_subnet" "private_1b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.cidr_vpc, 8, count.index + 3)

  tags = {
    Name = "${var.projectname}-private-subnet-1b"
  }
}