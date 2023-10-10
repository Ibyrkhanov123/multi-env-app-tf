module "bucket1" {
  source = "../../modules/s3-module"
  bucket_name = var.bucket_name
  Env_tag = var.Env_tag
  Purpose_tag = var.Purpose_tag
  version_status = var.version_status
}