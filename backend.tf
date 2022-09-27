terraform {
  backend "s3" {
    bucket = "1pk"
    key    = "mutable/infra/dev/terraform.tfstate"
    region = "us-east-1"
  }
}