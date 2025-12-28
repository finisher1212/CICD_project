output "pb_sn" {
    value = aws_subnet.public.id
}

output "sg" {
    value = [aws_security_group.web_sg.id]
}