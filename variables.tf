# Filepath: variables.tf

variable "gitlab_domain" {
  description = "Domain name for the GitLab instance."
  type        = string
}

variable "gitlab_external_ip" {
  description = "External IP address for the GitLab instance."
  type        = string
}

variable "gitlab_email" {
  description = "Email address for the GitLab instance's admin user."
  type        = string
}

variable "gitlab_root_password" {
  description = "Root password for the GitLab instance."
  type        = string
  sensitive   = true
}

variable "gitlab_secret_key" {
  description = "Secret key for the GitLab instance."
  type        = string
  sensitive   = true
}

variable "grafana_admin_password" {
  description = "Admin password for Grafana."
  type        = string
  sensitive   = true
}

variable "jenkins_admin_password" {
  description = "Admin password for Jenkins."
  type        = string
  sensitive   = true
}

variable "minio_access_key" {
  description = "Access key for MinIO."
  type        = string
}

variable "minio_secret_key" {
  description = "Secret key for MinIO."
  type        = string
  sensitive   = true
}

variable "postgres_password" {
  description = "Password for PostgreSQL."
  type        = string
  sensitive   = true
}

variable "postgres_database" {
  description = "Database name for PostgreSQL."
  type        = string
}

variable "redis_password" {
  description = "Password for Redis."
  type        = string
  sensitive   = true
}

variable "elasticsearch_replicas" {
  description = "Number of replicas for Elasticsearch."
  type        = number
}

variable "logstash_pipeline" {
  description = "Pipeline configuration for Logstash."
  type        = string
}

variable "kibana_dashboard" {
  description = "Dashboard configuration for Kibana."
  type        = string
}

variable "gitlab_runner_registration_token" {
  description = "Registration token for GitLab Runner."
  type        = string
  sensitive   = true
}

variable "gitlab_runner_gitlab_url" {
  description = "GitLab URL for GitLab Runner."
  type        = string
}
