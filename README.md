# terraform-azurerm-helloworld

Terraform "Hello World!" Module

<!-- BEGIN_TF_DOCS -->
## Usage

```hcl
module "helloworld" {
  source = "cloudeteer/helloworld/azurerm"
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| client\_id | n/a |
| hello\_world | n/a |
<!-- END_TF_DOCS -->