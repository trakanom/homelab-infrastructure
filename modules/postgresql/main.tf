resource "helm_release" "postgresql" {
  name      = "postgresql"
  chart     = "bitnami/postgresql"
  namespace = "default"

  set_sensitive{
    name  = "postgresqlPassword"
    value = var.postgres_password
  }

  set {
    name  = "postgresqlDatabase"
    value = var.postgres_database
  }
}
