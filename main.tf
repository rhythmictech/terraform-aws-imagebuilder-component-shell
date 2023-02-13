locals {
  latest_component_minor_version = "${split(".", var.component_version)[0]}.${split(".", var.component_version)[1]}.x"
  action                         = var.platform == "Linux" ? "ExecuteBash" : "ExecutePowershell"

  data = templatefile("${path.module}/component.yml.tpl", {
    description = var.description
    name        = var.name
    action      = local.action
    commands    = var.commands
    phase       = var.phase
  })
}

resource "aws_imagebuilder_component" "this" {
  count = var.create ? 1 : 0

  name    = var.name
  version = var.component_version

  change_description    = var.change_description
  data                  = var.data_uri == null ? local.data : null
  description           = var.description
  kms_key_id            = var.kms_key_id
  platform              = var.platform
  supported_os_versions = var.supported_os_versions
  uri                   = var.data_uri

  tags = merge(
    var.tags,
    { Name : var.name }
  )
}
