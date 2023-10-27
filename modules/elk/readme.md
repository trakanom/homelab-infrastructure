# ELK Module 📊

## Overview

Deploy the ELK (Elasticsearch, Logstash, Kibana) stack, a set of three open-source products from Elastic, used for log aggregation and visualization.

## Usage

To incorporate the ELK module in your Terraform configuration:

```hcl
module "elk" {
source = "./modules/elk"
// ... other variables
}
```

## Configuration

The ELK module has several configuration options. Refer to the `variables.tf` in the module directory for a comprehensive list. Key variables include:

-   `elasticsearch_replicas`: Number of replicas for Elasticsearch.
-   `logstash_pipeline`: Pipeline configuration for Logstash.
-   `kibana_dashboard`: Dashboard configuration for Kibana.

Remember to set these variables either in your `terraform.tfvars` or directly in the module configuration.

## Outputs

-   `elk_url`: URL for the deployed ELK stack.

## Interaction

After deployment, access your Kibana dashboard via the provided `elk_url`. From there, you can visualize and navigate your logs aggregated by Logstash and stored in Elasticsearch.

## License

MIT License.
