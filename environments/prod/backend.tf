terraform {
  backend "s3" {
    bucket = "terraform-class-backend-arman-bucket"
    key    = "multi-env-app-tf/prod/terraform.tfstate"
    region = "us-east-1"
  }
}