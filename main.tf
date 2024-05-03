provider "aws" {
    region = "ap-south-1"
}

data "aws_ami" "image" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_instance" "terraform_instance" {
  ami                    = data.aws_ami.image.id
  key_name               = "Jenkins-Server"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Ansible-host"
  }
}

resource "null_resource" "hostsfile" {
  depends_on = [aws_instance.terraform_instance]
  provisioner "local-exec" {
    on_failure = fail
    command = "echo ${aws_instance.terraform_instance.private_ip} >> hosts"
  }
