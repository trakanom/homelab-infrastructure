# Variables for Elasticsearch
variable "elasticsearch_replicas" {
  description = "Number of replicas for Elasticsearch."
  type        = number
  default     = 1
}

# Variables for Logstash
variable "logstash_pipeline" {
  description = "Logstash pipeline configuration."
  type        = string
  default     = ""
}

# Variables for Kibana
variable "kibana_dashboard" {
  description = "Kibana dashboard configuration."
  type        = string
  default     = ""
}
