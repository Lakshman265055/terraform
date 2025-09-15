output "public_ip"{

    value = aws_instance.terraform.public_ip
    sensitive = false
    description = "this is terraform server public ip"
}