
output "ID" {
  value = aws_instance.web.id
}

output "Private_IP" {
  value = aws_instance.web.private_ip
}


output "Public_ip" {
  value = aws_instance.web.public_ip
}


output "arn" {
  value = aws_instance.web.arn
}