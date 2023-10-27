# Prometheus Module 📈

## Overview

Deploy Prometheus, an open-source systems monitoring and alerting toolkit.

## Usage

To integrate the Prometheus module into your Terraform setup:

```hcl
module "prometheus" {
source = "./modules/prometheus"
// ... other variables
}
```

## Configuration

The Prometheus module is designed to work out of the box with minimal configuration. However, always refer to the `variables.tf` within the module for any configurable parameters.

## Outputs

-   `prometheus_url`: URL for the deployed Prometheus instance.

## Interaction

Once deployed, you can access your Prometheus monitoring UI by navigating to the outputted `prometheus_url`. From there, you can set up alerts, view metrics, and more.

## License

MIT License.
