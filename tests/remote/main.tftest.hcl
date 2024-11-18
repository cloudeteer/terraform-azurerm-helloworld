provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

run "should_apply_without_error" {
  command = apply

  assert {
    condition     = output.hello_world == "Hello World!"
    error_message = "Output hello_world not equal to expected value"
  }
}
