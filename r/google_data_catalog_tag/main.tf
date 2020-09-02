terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_data_catalog_tag" "this" {
  column   = var.column
  parent   = var.parent
  template = var.template

  dynamic "fields" {
    for_each = var.fields
    content {
      bool_value      = fields.value["bool_value"]
      double_value    = fields.value["double_value"]
      enum_value      = fields.value["enum_value"]
      field_name      = fields.value["field_name"]
      string_value    = fields.value["string_value"]
      timestamp_value = fields.value["timestamp_value"]
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

