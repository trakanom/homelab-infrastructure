output "prometheus_service_url" {
  description = "The service URL for Prometheus."
  value       = helm_release.prometheus.status.ingress[0].hostname
}
