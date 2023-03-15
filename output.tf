output "private_subnet_id" {
  value       = aws_subnet.private-subnet-1.id
  description = "The ID of the subnet."
}
