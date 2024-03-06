resource "aws_key_pair" "app_keypair" {
  public_key = file("terraform-demo.pub")
  key_name   = "Tbotkey"
}
 