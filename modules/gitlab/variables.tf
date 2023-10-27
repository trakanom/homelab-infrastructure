variable "gitlab_domain" {
  description = "The domain for GitLab."
  type        = string
}

variable "gitlab_external_ip" {
  description = "The external IP for GitLab."
  type        = string
}

variable "gitlab_email" {
  description = "The email for GitLab."
  type        = string
}

variable "gitlab_root_password" {
  description = "The root password for GitLab."
  type        = string
  sensitive   = true
}

variable "gitlab_secret_key" {
  description = "The secret key for GitLab."
  type        = string
  sensitive   = true
}
