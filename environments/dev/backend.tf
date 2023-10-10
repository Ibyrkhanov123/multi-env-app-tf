terraform {
  backend "s3" {
    bucket = "terraform-class-backend-arman-bucket"
    key    = "multi-env-app-tf/dev/terraform.tfstate"
    region = "us-east-1"
  }
}