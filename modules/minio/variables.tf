variable "minio_access_key" {
  description = "The access key for MinIO."
  type        = string
}

variable "minio_secret_key" {
  description = "The secret key for MinIO."
  type        = string
  sensitive   = true
}
