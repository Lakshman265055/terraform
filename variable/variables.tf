variable "ami_id"{

    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI id"
}

variable "instance_type"{

    type = string
    default = "t3.micro"
    description = "this is instance type"
}

variable "instance_type"{

    type = string
    default = "t3.micro"
    description = "this is instance type"
}

variable "tags" {
    type = map
    default = {

        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "Dev"
        terraform = "true"
    }
}


variable "sg_name"{

    type = string
    default = "allow_ssh_terra_basic"
    description = "this is sg_name type"
}

variable "from_port"{

    type = number
    default = 22
    
}
variable "to_port"{

    type = number
    default = 22
    
}

variable "ingress_cir"{

    type = list(string)
    default = ["0.0.0.0/0"]
    
}


