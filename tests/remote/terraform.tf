# Loaded by `run "setup"` in `main.test.hcl`
# This file is used to configure Terraform settings and required providers for remote tests.
terraform {
  # based on the version constraints use the lowest version of Terraform that is compatible
  required_version = "1.9.0"

  # based on the version constraints use the lowest version of Terraform that is compatible
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
}
