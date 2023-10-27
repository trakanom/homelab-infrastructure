resource "helm_release" "minio" {
  name      = "minio"
  chart     = "minio/minio"
  namespace = "default"

  set {
    name  = "accessKey"
    value = var.minio_access_key
  }

  set {
    name  = "secretKey"
    value = var.minio_secret_key
  }
}
