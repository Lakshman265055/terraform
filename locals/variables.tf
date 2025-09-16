variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]

}

variable "common_tags" {

  type = map(any)
  default = {
    project     = "expense"
    Environment = "dev"
    terraform   = "true"


  }
}

# variable "zone_id" {
#   default = "Z0273878MO51HBY4V78N"

# }

# variable "domain_name" {
#   default = "lakshmangundapu.icu"

# }

variable "environment" {
    default = "prod"
 }