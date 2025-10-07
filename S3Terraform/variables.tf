variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "Aws profile credencntial (~/.aws/credentials)"
  default     = "awsqa"
}

variable "bucket_name" {
  type        = string
  description = "Unique bucket name"
}

variable "owner" {
  type        = string
  description = "Tag Owner"
  default     = "Test"
}

variable "upload_prefix" {
  type        = string
  description = "Prefix sub carpet"
  default     = "practice-document"
}


