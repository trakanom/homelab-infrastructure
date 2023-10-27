# Filepath: outputs.tf

output "gitlab_url" {
  description = "URL for the deployed GitLab instance."
  value       = module.gitlab.gitlab_url
}

output "grafana_url" {
  description = "URL for the deployed Grafana instance."
  value       = module.grafana.grafana_url
}

output "jenkins_url" {
  description = "URL for the deployed Jenkins instance."
  value       = module.jenkins.jenkins_url
}

output "minio_url" {
  description = "URL for the deployed MinIO instance."
  value       = module.minio.minio_url
}

output "postgresql_url" {
  description = "URL for the deployed PostgreSQL instance."
  value       = module.postgresql.postgresql_url
}

output "redis_url" {
  description = "URL for the deployed Redis instance."
  value       = module.redis.redis_url
}

output "elk_url" {
  description = "URL for the deployed ELK stack."
  value       = module.elk.elk_url
}

output "gitlab_runner_url" {
  description = "URL for the deployed GitLab Runner."
  value       = module.gitlab_runner.gitlab_runner_url
}

output "prometheus_url" {
  description = "URL for the deployed Prometheus instance."
  value       = module.prometheus.prometheus_url
}
