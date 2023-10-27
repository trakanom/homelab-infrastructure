output "gitlab_service_url" {
  description = "The service URL for GitLab."
  value       = helm_release.gitlab.status.ingress[0].hostname
}
