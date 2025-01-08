output "client_id" {
  value = data.azurerm_client_config.current.client_id
  description = "The client ID of the Service Principal."
}

output "hello_world" {
  value = "Hello World!"
  description = "A friendly greeting."
}
