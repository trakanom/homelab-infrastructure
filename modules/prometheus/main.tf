resource "helm_release" "prometheus" {
  name      = "prometheus"
  chart     = "prometheus-community/prometheus"
  namespace = "default"

  set {
    name  = "alertmanager.persistentVolume.enabled"
    value = "true"
  }

  set {
    name  = "server.persistentVolume.enabled"
    value = "true"
  }
}
