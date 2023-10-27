resource "helm_release" "elasticsearch" {
  name      = "elasticsearch"
  chart     = "elastic/elasticsearch"
  namespace = "default"

  set {
    name  = "persistence.enabled"
    value = "true"
  }
}

resource "helm_release" "logstash" {
  name      = "logstash"
  chart     = "elastic/logstash"
  namespace = "default"
}

resource "helm_release" "kibana" {
  name      = "kibana"
  chart     = "elastic/kibana"
  namespace = "default"

  set {
    name  = "service.type"
    value = "LoadBalancer"
  }
}
