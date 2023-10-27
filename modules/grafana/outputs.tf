output "grafana_service_url" {
  description = "The service URL for Grafana."
  value       = helm_release.grafana.status.ingress[0].hostname
}
