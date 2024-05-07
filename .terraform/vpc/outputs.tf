output "vpc_id" {
  description = "vpc id output"
  value = aws_vpc.this.id
}

output "subnet_priv_a" {
  description = "subnet private a"
  value = aws_subnet.private_1a.id
}

output "subnet_priv_b" {
  description = "subnet private b"
  value = aws_subnet.private_1b.id
}