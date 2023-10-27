# Grafana Module 📊

## Overview

Deploy Grafana, a platform for monitoring and observability. Visualize, explore, and alert on your metrics no matter where they're stored.

## Usage

To integrate the Grafana module into your Terraform setup:

```hcl
module "grafana" {
source = "./modules/grafana"
// ... other variables
}
```

## Configuration

The Grafana module has several configuration options. Refer to the `variables.tf` in the module directory for a comprehensive list. Key variables include:

-   `grafana_admin_password`: The password for the Grafana admin account.
-   ... (list other key variables)

Ensure you set these variables either in your `terraform.tfvars` or directly in the module configuration.

## Outputs

-   `grafana_url`: URL for the deployed Grafana instance.

## Interaction

After deployment, access your Grafana dashboard via the provided `grafana_url`. Use `admin` as the default username and the `grafana_admin_password` you set during configuration for the initial login.

## License

MIT License.
