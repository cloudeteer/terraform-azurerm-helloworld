provider "azurerm" {
  features {}
}

run "client_id_should_be_uuid" {
  command = apply

  assert {
    condition     = can(regex("^([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})$", data.azurerm_client_config.current.client_id))
    error_message = "The client_id format does not match the format of a UUID."
  }
}
