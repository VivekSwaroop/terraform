resource "aws_instance" "ec2-instance" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.roboshop.id]

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "roboshop" {
  name        = "roboshop-all-aws"
  description = "Allow TLS inbound traffic"
  #vpc_id      = "${aws_vpc.main.id}"

  ingress {
    description = "Allow all ports"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}