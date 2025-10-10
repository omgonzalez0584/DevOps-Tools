resource "aws_vpc" "vpc_virginia" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc-virginia"
    name = "IaC-vpc-virginia"
    environment = "dev"
  }
}