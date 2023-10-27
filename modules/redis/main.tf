resource "helm_release" "redis" {
  name       = "redis"
  chart      = "bitnami/redis"
  namespace  = "default"

  set_sensitive {
    name  = "password"
    value = var.redis_password
  }
}
