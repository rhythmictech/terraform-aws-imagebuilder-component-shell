locals {
  latest_component_minor_version = "${split(".", var.component_version)[0]}.${split(".", var.component_version)[1]}.x"

  data = templatefile("${path.module}/component.yml.tpl", {
    description = var.description
    name        = var.name
    commands    = var.commands
    phase       = var.phase
  })
}

resource "aws_cloudformation_stack" "this" {
  name               = "${var.name}-${uuid()}"
  on_failure         = "ROLLBACK"
  timeout_in_minutes = var.cloudformation_timeout

  tags = merge(
    var.tags,
    { Name : "${var.name}-stack" }
  )

  template_body = templatefile("${path.module}/cloudformation.yml.tpl", {
    change_description = var.change_description
    data               = var.data_uri == null ? local.data : null
    description        = var.description
    kms_key_id         = var.kms_key_id
    name               = var.name
    platform           = var.platform
    uri                = var.data_uri
    version            = var.component_version

    tags = merge(
      var.tags,
      { Name : var.name }
    )
  })

  lifecycle {
    create_before_destroy = true

    ignore_changes = [
      name
    ]
  }
}
