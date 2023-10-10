variable "bucket_name" {
  description = "Enter S3 Bucket name"
  type = string
  validation {
    condition     = can(regex("^([a-z0-9]{1}[a-z0-9-]{1,61}[a-z0-9]{1})$", var.bucket_name))
    error_message = "Invalid bucket name, please check https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html for more details."
  }
}

variable "Env_tag" {
  description = "Enter environment tag"
  type = string
  validation {
    condition = contains(["dev", "prod"], var.Env_tag)
    error_message = "Valid value is of the following: dev, prod."
  }
}

variable "Purpose_tag" {
  description = "Enter purpose tag"
  type = string
}

variable "version_status" {
  description = "Enter value for versioning your bucket"
  type = string
  validation {
    condition = contains(["Enabled", "Disabled", "Suspended"], var.version_status)
    error_message = "Valid value is of the following: Enabled, Disabled, Suspended."
  }
}