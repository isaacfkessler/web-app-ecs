resource "aws_subnet" "public_1a" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = cidrsubnet(var.cidr_vpc, 8, 1)
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.projectname}-public-subnet-1a"
  }
}

resource "aws_subnet" "public_1b" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = cidrsubnet(var.cidr_vpc, 8, 2)
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.projectname}-public-subnet-1b"
  }
}

resource "aws_subnet" "private_1a" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = cidrsubnet(var.cidr_vpc, 8, 3)
  availability_zone = "${var.region}a"

  tags = {
    Name = "${var.projectname}-private-subnet-1a"
  }
}

resource "aws_subnet" "private_1b" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = cidrsubnet(var.cidr_vpc, 8, 4)
  availability_zone = "${var.region}b"

  tags = {
    Name = "${var.projectname}-private-subnet-1b"
  }
}