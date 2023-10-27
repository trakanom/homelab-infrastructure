output "redis_service_url" {
  description = "The service URL for Redis."
  value       = helm_release.redis.status.ingress[0].hostname
}
