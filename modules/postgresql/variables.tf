variable "postgres_password" {
  description = "Password for PostgreSQL."
  type        = string
  sensitive   = true
}

variable "postgres_database" {
  description = "Database name for PostgreSQL."
  type        = string
  default     = "gitlab"
}
