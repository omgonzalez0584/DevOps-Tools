variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "Aws profile credential"
  default     = "awsqa"
}

variable "virginia" {
  type = object({
    name        : string
    vpc_cidr   : list(string)
    environment : string
  })

}

variable "virginia_subnet-public" {
  type = object({
    public_subnet_cidr : list(string)
  })
}

variable "virginia_subnet-private" {
  type = object({
    private_subnet_cidr : list(string)
  })
}

variable "availability_zone" {
  type    = object({
    availability_zone : list(string)
    description       : string
  })
  }