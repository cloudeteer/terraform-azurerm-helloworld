provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

# The "setup" test:
# - loads terraform.tf to set the required versions for following tests
# - to prepare dependencies to be used in the remote module tests
run "setup" {
  command = apply

  module {
    source = "./tests/remote"
  }
}

run "should_apply_without_error" {
  command = apply

  assert {
    condition     = output.hello_world == "Hello World!"
    error_message = "Output hello_world not equal to expected value"
  }
}
