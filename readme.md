# Homelab Infrastructure 🚀

Welcome to the Homelab Infrastructure repository! Here, we've set up a Kubernetes-based infrastructure with a plethora of services like GitLab, Grafana, Jenkins, and more. Whether you're a weather enthusiast or a CI/CD aficionado, we've got something for everyone!

## Table of Contents

-   [Getting Started](#getting-started)
-   [Modules](#modules)
-   [Configuration](#configuration)
-   [Contributing](#contributing)
-   [License](#license)

## Getting Started

1. **Prerequisites**: Ensure you have Terraform installed and a running Kubernetes cluster.
2. **Clone the Repository**:
    ```bash
    git clone https://github.com/yourusername/homelab-infrastructure.git
    cd homelab-infrastructure
    ```
3. **Initialize Terraform**:
    ```bash
    terraform init
    ```
4. **Plan & Apply**: Review the changes and apply them:
    ```bash
    terraform plan
    terraform apply
    ```

## Modules

We've modularized our infrastructure for better organization and scalability. Here's a quick overview:

-   **GitLab**: Your one-stop solution for repository management, CI/CD, and more.
-   **Grafana**: Visualize your metrics in style.
-   **Jenkins**: Old but gold, Jenkins provides a robust CI/CD solution.
-   ... and many more!

Dive into each module's directory for a detailed README.

## Configuration

Configuration is a breeze! Check out `terraform.tfvars` for all the configurable parameters. We've provided best practices and recommendations in the comments to guide you.

## Contributing

Got improvements? Fork the repo, make your changes, and submit a pull request. We appreciate all contributions!

## License

This project is licensed under the MIT License. See `LICENSE` for more details.
