# Jenkins Module 🛠

## Overview

Deploy Jenkins, the leading open-source automation server that provides hundreds of plugins to support building, deploying, and automating any project.

## Usage

To incorporate the Jenkins module in your Terraform configuration:

```hcl
module "jenkins" {
source = "./modules/jenkins"
// ... other variables
}
```

## Configuration

The Jenkins module has several configuration options. Refer to the `variables.tf` in the module directory for a comprehensive list. Key variables include:

-   `jenkins_admin_password`: The password for the Jenkins admin account.

Remember to set these variables either in your `terraform.tfvars` or directly in the module configuration.

## Outputs

-   `jenkins_url`: URL for the deployed Jenkins instance.

## Interaction

After deployment, access your Jenkins dashboard via the provided `jenkins_url`. Use `admin` as the default username and the `jenkins_admin_password` you set during configuration for the initial login.

## License

MIT License.
