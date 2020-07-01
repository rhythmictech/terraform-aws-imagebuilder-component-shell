# terraform-aws-imagebuilder-component-shell
Terraform module that creates EC2 Image Builder components with CloudFormation

[![tflint](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/workflows/tflint/badge.svg?branch=main&event=push)](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/actions?query=workflow%3Atflint+event%3Apush+branch%3Amain)
[![tfsec](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/workflows/tfsec/badge.svg?branch=main&event=push)](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/actions?query=workflow%3Atfsec+event%3Apush+branch%3Amain)
[![yamllint](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/workflows/yamllint/badge.svg?branch=main&event=push)](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/actions?query=workflow%3Ayamllint+event%3Apush+branch%3Amain)
[![misspell](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/workflows/misspell/badge.svg?branch=main&event=push)](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/actions?query=workflow%3Amisspell+event%3Apush+branch%3Amain)
[![pre-commit-check](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/workflows/pre-commit-check/badge.svg?branch=main&event=push)](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/actions?query=workflow%3Apre-commit-check+event%3Apush+branch%3Amain)
<a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=RhythmicTech" alt="follow on Twitter"></a>

## Example
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

## About
This module bridges the gap allowing Terraform to create EC2 Image Builder components (especially with Ansible) until native support is added to Terraform

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |
| aws | ~> 2.44 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.44 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| commands | List of strings. Each string is a shell command | `list(string)` | n/a | yes |
| component\_version | Version of the component | `string` | n/a | yes |
| name | name to use for component | `string` | n/a | yes |
| change\_description | description of changes since last version | `string` | `null` | no |
| cloudformation\_timeout | How long to wait (in minutes) for CFN to apply before giving up | `number` | `10` | no |
| data\_uri | Use this to override the component document with one at a particular URL endpoint | `string` | `null` | no |
| description | description of component | `string` | `null` | no |
| kms\_key\_id | KMS key to use for encryption | `string` | `null` | no |
| platform | platform of component (Linux or Windows) | `string` | `"Linux"` | no |
| tags | map of tags to use for CFN stack and component | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| component\_arn | ARN of the EC2 Image Builder Component |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## The Giants underneath this module
- pre-commit.com/
- terraform.io/
- github.com/tfutils/tfenv
- github.com/segmentio/terraform-docs
