locals {

  domain_name = "lakshmangundapu.icu"
  zone_id     = "Z0273878MO51HBY4V78N"
  instance_type = var.environment == "prod" ? "t3.micro" : "t3.micro"

  #count.index will not wpork in locals
}