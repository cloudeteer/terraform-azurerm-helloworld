output "hello_world" {
  value = "Hello World!"
}

output "client_id" {
  value = data.azurerm_client_config.current.client_id
}
