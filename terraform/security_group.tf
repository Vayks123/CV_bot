resource "aws_security_group" "telegramsever" {
  name        = "dynamic telegram security group"
  description = "Allow HTTP HTTPS SSH "

  dynamic "ingress" {
    for_each = ["80", "443", "22"]
    content {
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "telegramsecurity group"
  }
}
