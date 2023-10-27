output "jenkins_service_url" {
  description = "The service URL for Jenkins."
  value       = helm_release.jenkins.status.ingress[0].hostname
}
