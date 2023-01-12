# terraform-aws-imagebuilder-component-shell
Terraform module that creates EC2 Image Builder components

[![tflint](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/workflows/tflint/badge.svg?branch=main&event=push)](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/actions?query=workflow%3Atflint+event%3Apush+branch%3Amain)
[![tfsec](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/workflows/tfsec/badge.svg?branch=main&event=push)](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/actions?query=workflow%3Atfsec+event%3Apush+branch%3Amain)
[![yamllint](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/workflows/yamllint/badge.svg?branch=main&event=push)](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/actions?query=workflow%3Ayamllint+event%3Apush+branch%3Amain)
[![misspell](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/workflows/misspell/badge.svg?branch=main&event=push)](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/actions?query=workflow%3Amisspell+event%3Apush+branch%3Amain)
[![pre-commit-check](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/workflows/pre-commit-check/badge.svg?branch=main&event=push)](https://github.com/rhythmictech/terraform-aws-imagebuilder-component-shell/actions?query=workflow%3Apre-commit-check+event%3Apush+branch%3Amain)
<a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=twitter" alt="follow on Twitter"></a>

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
This module allows creation of a Shell commands component for use in EC2 Image Builder recipes. 

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.22.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.49.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_imagebuilder_component.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/imagebuilder_component) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_change_description"></a> [change\_description](#input\_change\_description) | description of changes since last version | `string` | `null` | no |
| <a name="input_cloudformation_timeout"></a> [cloudformation\_timeout](#input\_cloudformation\_timeout) | How long to wait (in minutes) for CFN to apply before giving up | `number` | `10` | no |
| <a name="input_commands"></a> [commands](#input\_commands) | List of strings. Each string is a shell command | `list(string)` | n/a | yes |
| <a name="input_component_version"></a> [component\_version](#input\_component\_version) | Version of the component | `string` | n/a | yes |
| <a name="input_create"></a> [create](#input\_create) | A flag to disable creation of the component | `bool` | `true` | no |
| <a name="input_data_uri"></a> [data\_uri](#input\_data\_uri) | Use this to override the component document with one at a particular URL endpoint | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | description of component | `string` | `null` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | KMS key to use for encryption | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | name to use for component | `string` | n/a | yes |
| <a name="input_phase"></a> [phase](#input\_phase) | The Image Builder phase this component is in, either 'build' or 'test'. | `string` | `"build"` | no |
| <a name="input_platform"></a> [platform](#input\_platform) | platform of component (Linux or Windows) | `string` | `"Linux"` | no |
| <a name="input_supported_os_versions"></a> [supported\_os\_versions](#input\_supported\_os\_versions) | A set of operating system versions supported by the component. If the OS information is available, a prefix match is performed against the base image OS version during image recipe creation. | `set(string)` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | map of tags to use for CFN stack and component | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_component_arn"></a> [component\_arn](#output\_component\_arn) | ARN of the EC2 Image Builder Component |
| <a name="output_latest_minor_version_arn"></a> [latest\_minor\_version\_arn](#output\_latest\_minor\_version\_arn) | ARN of the EC2 Image Builder Component |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## The Giants underneath this module
- pre-commit.com/
- terraform.io/
- github.com/tfutils/tfenv
- github.com/segmentio/terraform-docs
