terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_data_catalog_tag_template" "this" {
  display_name    = var.display_name
  force_delete    = var.force_delete
  project         = var.project
  region          = var.region
  tag_template_id = var.tag_template_id

  dynamic "fields" {
    for_each = var.fields
    content {
      display_name = fields.value["display_name"]
      field_id     = fields.value["field_id"]
      is_required  = fields.value["is_required"]
      order        = fields.value["order"]

      dynamic "type" {
        for_each = fields.value.type
        content {
          primitive_type = type.value["primitive_type"]

          dynamic "enum_type" {
            for_each = type.value.enum_type
            content {

              dynamic "allowed_values" {
                for_each = enum_type.value.allowed_values
                content {
                  display_name = allowed_values.value["display_name"]
                }
              }

            }
          }

        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

