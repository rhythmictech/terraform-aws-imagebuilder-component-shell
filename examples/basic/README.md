# basic example
A basic example for this repository

## Code
```hcl
module "test_shell_component" {
  source  = "rhythmictech/imagebuilder-component-shell/aws"
  version = "~> 0.1.0"

  component_version = "1.0.0"
  description       = "Testing component"
  name              = "testing-component"
  commands          = ["echo 'Testing Component'"]
  tags              = local.tags
}
```

## Applying
```
>  terraform apply

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

component_arn = arn:aws:imagebuilder:us-east-1:000000000000:component/testing-component/1.0.0/1
```
