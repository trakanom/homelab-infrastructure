resource "helm_release" "gitlab" {
  name       = "gitlab"
  chart      = "gitlab/gitlab"
  namespace  = "default"

  set {
    name  = "global.hosts.domain"
    value = var.gitlab_domain
  }

  set {
    name  = "global.hosts.externalIP"
    value = var.gitlab_external_ip
  }

  set {
    name  = "certmanager-issuer.email"
    value = var.gitlab_email
  }

  set_sensitive {
    name  = "gitlab.migrations.password.secret"
    value = var.gitlab_root_password
  }

  set_sensitive {
    name  = "gitlab.migrations.password.key"
    value = var.gitlab_secret_key
  }

  # Additional GitLab-specific configurations can be added here.
}
