variable "gitlab_runner_registration_token" {
  description = "The registration token for GitLab Runner."
  type        = string
  sensitive   = true
}

variable "gitlab_runner_gitlab_url" {
  description = "The URL of the GitLab instance to register the runner with."
  type        = string
}
