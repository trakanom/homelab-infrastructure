# GitLab Runner Terraform Module

This module provisions a GitLab Runner on your Kubernetes cluster.

## Usage

Include this module in your Terraform code:

```hcl
module "gitlab_runner" {
source = "./modules/gitlab-runner"
gitlab_runner_gitlab_url = "https://your-gitlab-url.com"
gitlab_runner_registration_token = "your-registration-token"
// ... other variables
}
```

## Inputs

| Name                               | Description                                   | Type     | Default | Required |
| ---------------------------------- | --------------------------------------------- | -------- | ------- | :------: |
| `gitlab_runner_gitlab_url`         | The URL of your GitLab instance.              | `string` | n/a     |   yes    |
| `gitlab_runner_registration_token` | The registration token for the GitLab Runner. | `string` | n/a     |   yes    |
| ...                                | ...                                           | ...      | ...     |   ...    |

## Outputs

| Name                        | Description                                     |
| --------------------------- | ----------------------------------------------- |
| `gitlab_runner_service_url` | The service URL for the deployed GitLab Runner. |

## Notes

Ensure that the GitLab Runner has the necessary permissions and resources to run jobs efficiently. Monitor the runner's performance and adjust resources as necessary.
