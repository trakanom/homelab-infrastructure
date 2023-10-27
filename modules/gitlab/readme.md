# GitLab Module 🦊

## Overview

This module deploys GitLab, a complete DevOps platform, delivered as a single application. With GitLab, you can manage projects, repositories, and CI/CD pipelines all under one roof.

## Usage

To use this module in your Terraform configuration, reference it like so:

```hcl
module "gitlab" {
source = "./modules/gitlab"
// ... other variables
}
```

## Configuration

The GitLab module requires several configuration parameters. Check the `variables.tf` within the module for a full list. Here are some key variables:

-   `gitlab_domain`: The domain name for your GitLab instance.
-   `gitlab_external_ip`: The external IP address for your GitLab instance.
-   ... (list other key variables)

Provide values for these variables in your `terraform.tfvars` or directly in the module configuration.

## Outputs

-   `gitlab_url`: URL for the deployed GitLab instance.

## Interaction

Once deployed, you can access your GitLab instance by navigating to the outputted `gitlab_url`. The default admin username is `root`. Use the `gitlab_root_password` you provided during configuration for the initial login.

## License

This module is licensed under the MIT License.
