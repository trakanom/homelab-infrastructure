# Filepath: terraform.tfvars

# Aggregate terraform.tfvars

# ======================
# Elk Configuration
# ======================

# Number of replicas for the Elasticsearch deployment.
# Best Practice: Depending on the size of your cluster and the volume of logs, choose a number between 1-3.
elasticsearch_replicas = ""

# Configuration for the Logstash pipeline.
# Best Practice: Define a clear pipeline for processing logs. Refer to Logstash documentation for pipeline examples.
logstash_pipeline = ""

# Configuration or URL for the Kibana dashboard.
# Best Practice: If you have predefined dashboards, provide their URLs or configurations here.
kibana_dashboard = ""

# ======================
# Gitlab Configuration
# ======================

# Domain name for the GitLab instance.
# Best Practice: Use a subdomain dedicated to GitLab, e.g., gitlab.mydomain.com.
gitlab_domain = ""

# External IP address for the GitLab instance.
# Best Practice: Use a static IP if available to avoid disruptions.
gitlab_external_ip = ""

# Email address for the GitLab instance's admin user.
# Best Practice: Use a dedicated admin email, e.g., gitlab-admin@mydomain.com.
gitlab_email = ""

# Root password for the GitLab instance.
# Best Practice: Use a strong, unique password. Consider using a password manager to generate and store it.
gitlab_root_password = ""

# Secret key for the GitLab instance.
# Best Practice: Generate a long, random string. Tools like OpenSSL can help.
gitlab_secret_key = ""

# ======================
# Gitlab-runner Configuration
# ======================

# Registration token for the GitLab runner.
# Best Practice: This will be provided by GitLab when you set up a runner. Copy it directly from the GitLab interface.
gitlab_runner_registration_token = ""

# URL of the GitLab instance the runner should connect to.
# Best Practice: This should match the domain you've set up for GitLab, e.g., https://gitlab.mydomain.com.
gitlab_runner_gitlab_url = ""

# ======================
# Grafana Configuration
# ======================

# Admin password for the Grafana instance.
# Best Practice: Use a strong, unique password. Consider using a password manager.
grafana_admin_password = ""

# ======================
# Ingress-nginx Configuration
# ======================

# No variables for this module.

# ======================
# Jenkins Configuration
# ======================

# Admin password for the Jenkins instance.
# Best Practice: Use a strong, unique password. Avoid default passwords.
jenkins_admin_password = ""

# ======================
# Minio Configuration
# ======================

# Access key for the MinIO instance.
# Best Practice: Use a combination of alphanumeric characters. Avoid using easily guessable words.
minio_access_key = ""

# Secret key for the MinIO instance.
# Best Practice: Generate a long, random string. Tools like OpenSSL can help.
minio_secret_key = ""

# ======================
# Postgresql Configuration
# ======================

# Password for the PostgreSQL instance.
# Best Practice: Use a strong, unique password. Avoid default passwords like "postgres".
postgres_password = ""

# Default database name for the PostgreSQL instance.
# Best Practice: Choose a relevant name for your application, e.g., "gitlabdb".
postgres_database = ""

# ======================
# Prometheus Configuration
# ======================

# No variables for this module.

# ======================
# Redis Configuration
# ======================

# Password for the Redis instance.
# Best Practice: Use a strong, unique password. Avoid default passwords like "redis".
redis_password = ""
