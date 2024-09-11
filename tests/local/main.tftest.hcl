mock_provider "azurerm" {}


run "client_id_should_be_uuid" {
  command = plan

  assert {
    condition     = length(data.azurerm_client_config.current.client_id) == 8
    error_message = "The client_id (mocked value) format does not match the format of a UUID."
  }
}
