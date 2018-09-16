resource "aws_security_group" "allow_all" {
  name        = "Sec Group1"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-26013c4e"

  ingress {
    from_port   = 80
    to_port     = 0
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    #prefix_list_ids = ["pl-12c4e678"]
  }
}