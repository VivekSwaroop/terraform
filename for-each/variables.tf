variable "ami_id"{
    type = string
    default="ami-0b4f379183e5706b9"
}

variable "instance_names" {
  type = map
  default = {
    mongodb="t3.small"
    redis="t3.micro"
    cart="t3.micro"
    catalogue="t3.micro"
    user="t3.micro"
    shipping="t3.small"
    mysql="t3.micro"
    rabbitmq="t3.micro"
    payment="t3.micro"
    dispatch="t3.micro"
    web="t3.micro"
  }
}
variable "zone_id" {
  default = "Z0208933336SFA1306NJR"
}

variable "domain_name" {
  default = "vivekdevops.online"
}