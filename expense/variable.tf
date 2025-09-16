variable "instance_name" {
    type =   list(string)
    default = ["mysql","backend","frontend"]
}

variable "common_tags" {

  type = map
  default = {
    project = "expense"
    Environment = "dev"
    terraform = "true"

    
  }
}

variable "zone_id" {
    default = "Z0273878MO51HBY4V78N"
  
}

variable "domain_name" {
    default = "lakshmangundapu.icu"
  
}