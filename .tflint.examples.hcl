tflint {
  required_version = "~> 0.50"
}

# THIS SHOULD FAIL IN CI

rule "terraform_required_version" {
  enabled = false
}

rule "terraform_required_providers" {
  enabled = false
}

rule "terraform_module_version" {
  enabled = false
}
