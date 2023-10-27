output "elasticsearch_service_url" {
  description = "The service URL for Elasticsearch."
  value       = helm_release.elasticsearch.status.ingress[0].hostname
}

output "logstash_service_url" {
  description = "The service URL for Logstash."
  value       = helm_release.logstash.status.ingress[0].hostname
}

output "kibana_service_url" {
  description = "The service URL for Kibana."
  value       = helm_release.kibana.status.ingress[0].hostname
}
