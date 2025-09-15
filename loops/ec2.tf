resource "aws_instance" "terraform" {
  count = 3
  ami                     = "ami-09c813fb71547fc4f"
  instance_type           = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_terra.id]

   tags = {
    Name = var.instance_name[count.index]
  }
}

resource "aws_security_group" "allow_terra" {
    name = "allow_ssh_terra"
    description = "allow all for terraform"

  tags = {
    Name = "allow_terra"
  }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
   

}

