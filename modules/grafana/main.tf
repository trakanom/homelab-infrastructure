resource "helm_release" "grafana" {
  name      = "grafana"
  chart     = "grafana/grafana"
  namespace = "default"

  set {
    name  = "adminPassword"
    value = var.grafana_admin_password
  }

  set {
    name  = "service.type"
    value = "LoadBalancer"
  }
}
