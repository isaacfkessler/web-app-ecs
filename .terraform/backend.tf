terraform {
  backend "s3" {
    bucket = "backendtfisaac0102"
    key    = "terraform-eks/terraform.tfstate"
    region = "us-east-1"
  }
}
