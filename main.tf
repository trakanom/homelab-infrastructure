# Filepath: main.tf

provider "kubernetes" {
  # Configuration for the Kubernetes provider can be set here
  # This can include context, config_path, etc.
}

provider "helm" {
  kubernetes {
    # Configuration for Helm's Kubernetes provider can be set here
    # This can include context, config_path, etc.
  }
}

module "ingress_nginx" {
  source = "./modules/ingress-nginx"
}

module "gitlab" {
  source = "./modules/gitlab"
  gitlab_domain = var.gitlab_domain
  gitlab_external_ip = var.gitlab_external_ip
  gitlab_email = var.gitlab_email
  gitlab_root_password = var.gitlab_root_password
  gitlab_secret_key = var.gitlab_secret_key
}

module "grafana" {
  source = "./modules/grafana"
  grafana_admin_password = var.grafana_admin_password
}

module "jenkins" {
  source = "./modules/jenkins"
  jenkins_admin_password = var.jenkins_admin_password
}

module "minio" {
  source = "./modules/minio"
  minio_access_key = var.minio_access_key
  minio_secret_key = var.minio_secret_key
}

module "postgresql" {
  source = "./modules/postgresql"
  postgres_password = var.postgres_password
  postgres_database = var.postgres_database
}

module "redis" {
  source = "./modules/redis"
  redis_password = var.redis_password
}

module "elk" {
  source = "./modules/elk"
  elasticsearch_replicas = var.elasticsearch_replicas
  logstash_pipeline = var.logstash_pipeline
  kibana_dashboard = var.kibana_dashboard
}

module "gitlab_runner" {
  source = "./modules/gitlab-runner"
  gitlab_runner_gitlab_url = var.gitlab_runner_gitlab_url
  gitlab_runner_registration_token = var.gitlab_runner_registration_token
}


module "prometheus" {
  source = "./modules/prometheus"
  # Assuming there are no specific variables for prometheus as of now.
}
