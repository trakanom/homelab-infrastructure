output "minio_service_url" {
  description = "The service URL for MinIO."
  value       = helm_release.minio.status.ingress[0].hostname
}
