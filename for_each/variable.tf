variable "instances"{
    type = map
    default = {
       frontend = "t3.micro"
       backend = "t3.micro"
       mysql = "t3.micro"

    }
}

variable "zone_id" {
   default = "Z0273878MO51HBY4V78N"

}

variable "domain_name" {
  default = "lakshmangundapu.icu"

}

variable "environment" {
    default = "prod"
 }