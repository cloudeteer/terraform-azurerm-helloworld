run "should_apply_without_error" {
  command = apply

  module {
    source = "./tests/remote"
  }

  assert {
    condition     = module.example.hello_world == "Hello World!"
    error_message = "Output hello_world not equal to expected value"
  }
}
