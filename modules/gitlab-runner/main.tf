resource "helm_release" "gitlab-runner" {
  name       = "gitlab-runner"
  chart      = "gitlab/gitlab-runner"
  namespace  = "default"

  set {
    name  = "gitlabUrl"
    value = var.gitlab_runner_gitlab_url
  }

  set_sensitive {
    name  = "runner.registrationToken"
    value = var.gitlab_runner_registration_token
  }

  # Additional GitLab Runner-specific configurations can be added here.
}
