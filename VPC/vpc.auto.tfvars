virginia = {
  name        = "IaC-vpc-virginia"
  vpc_cidr    = ["10.10.0.0/16"]
  environment = "dev"
}

virginia_subnet-public = {
  public_subnet_cidr = ["10.10.1.0/24"]
}

virginia_subnet-private = {
  private_subnet_cidr = ["10.10.2.0/24"]
}

availability_zone = {
  availability_zone = ["us-east-1a", "us-east-1b" ]
  description       = "Virginia AZ"
}