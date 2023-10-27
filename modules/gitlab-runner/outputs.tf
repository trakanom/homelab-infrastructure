output "gitlab_runner_service_url" {
  description = "The service URL for GitLab Runner."
  value       = helm_release.gitlab-runner.status.ingress[0].hostname
}
