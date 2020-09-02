terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_data_catalog_entry" "this" {
  description           = var.description
  display_name          = var.display_name
  entry_group           = var.entry_group
  entry_id              = var.entry_id
  linked_resource       = var.linked_resource
  schema                = var.schema
  type                  = var.type
  user_specified_system = var.user_specified_system
  user_specified_type   = var.user_specified_type

  dynamic "gcs_fileset_spec" {
    for_each = var.gcs_fileset_spec
    content {
      file_patterns = gcs_fileset_spec.value["file_patterns"]
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

