resource "helm_release" "jenkins" {
  name       = "jenkins"
  chart      = "jenkinsci/jenkins"
  namespace  = "default"

  set_sensitive {
    name  = "master.adminPassword"
    value = var.jenkins_admin_password
  }

  set {
    name  = "master.serviceType"
    value = "LoadBalancer"
  }

  set {
    name  = "persistence.enabled"
    value = "true"
  }
}
