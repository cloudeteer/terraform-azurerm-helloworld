mock_provider "azurerm" {}

run "should_apply_without_error" {
  command = apply

  assert {
    condition     = output.hello_world == "Hello World!"
    error_message = "Output hello_world not equal to expected value"
  }
}
