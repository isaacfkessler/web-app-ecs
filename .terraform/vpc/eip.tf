resource "aws_eip" "eip-1a" {
  depends_on = [aws_internet_gateway.this]
  tags = {
    Name = "${var.projectname}-eip-ngw-1a"
  }
}

resource "aws_eip" "eip-1b" {
  depends_on = [aws_internet_gateway.this]
  tags = {
    Name = "${var.projectname}-eip-ngw-1b"
  }
}