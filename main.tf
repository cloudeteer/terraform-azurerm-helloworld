# only added to verify azurerm provider is required
# tflint-ignore: terraform_unused_declarations
data "azurerm_client_config" "current" {}
