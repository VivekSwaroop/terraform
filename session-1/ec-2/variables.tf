variable "sg-name" {
    type = string
    default = "roboshop"
}

variable "sg-description" {
    type = string
    default = "Allow TLS inbound traffic"
}

variable "inbound_from_port" {
    #type = string
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}