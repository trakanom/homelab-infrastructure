# PostgreSQL Module 🐘

## Overview

Deploy PostgreSQL, a powerful, open-source object-relational database system.

## Usage

To use the PostgreSQL module in your Terraform configuration:

```hcl
module "postgresql" {
source = "./modules/postgresql"
// ... other variables
}
```

## Configuration

The PostgreSQL module has several configuration options. Refer to the `variables.tf` in the module directory for a comprehensive list. Key variables include:

-   `postgres_password`: The password for the PostgreSQL instance.
-   `postgres_database`: The default database name for the PostgreSQL instance.

Ensure you set these variables either in your `terraform.tfvars` or directly in the module configuration.

## Outputs

-   `postgresql_url`: URL for the deployed PostgreSQL instance.

## Interaction

After deployment, connect to your PostgreSQL database using the provided `postgresql_url` and the credentials you set during configuration.

## License

MIT License.
