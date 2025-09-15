resource "aws_security_group" "allow_terra" {
    name = var.sg_name
    description = "allow all for terraform"

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
    ingress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = "tcp"
        cidr_blocks      = var.ingress_cir
        ipv6_cidr_blocks = ["::/0"]
  }
  tags = var.tags

}

resource "aws_instance" "terraform" {
  ami                     =  var.ami_id
  instance_type           = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_terra.id]

  tags = var.tags
  }


