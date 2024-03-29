data "aws_ami" "ubuntu_latest_ami" {
  owners = [ "099720109477" ]
  most_recent = true
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}
