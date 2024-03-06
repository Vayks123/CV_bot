resource "aws_instance" "telegram_bot" {
  ami                    = data.aws_ami.ubuntu_latest_ami.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.telegramsever.id]
  key_name               = aws_key_pair.app_keypair.key_name

  tags = {
    Name = "telegram bot"
  }

  provisioner "local-exec" {
      command = "echo 'export HOSTIP=${aws_instance.telegram_bot.public_ip}' > host"
  }
}
