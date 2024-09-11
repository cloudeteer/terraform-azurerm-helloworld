# This override file is mandatory for Terraform tests.
# Not needed to use this example.

terraform {
  required_providers {
    azurerm = { source = "hashicorp/azurerm" }
  }
}

module "example" { source = "../.." }
