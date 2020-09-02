terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_bigquery_dataset" "this" {
  dataset_id                      = var.dataset_id
  default_partition_expiration_ms = var.default_partition_expiration_ms
  default_table_expiration_ms     = var.default_table_expiration_ms
  delete_contents_on_destroy      = var.delete_contents_on_destroy
  description                     = var.description
  friendly_name                   = var.friendly_name
  labels                          = var.labels
  location                        = var.location
  project                         = var.project

  dynamic "access" {
    for_each = var.access
    content {
      domain         = access.value["domain"]
      group_by_email = access.value["group_by_email"]
      role           = access.value["role"]
      special_group  = access.value["special_group"]
      user_by_email  = access.value["user_by_email"]

      dynamic "view" {
        for_each = access.value.view
        content {
          dataset_id = view.value["dataset_id"]
          project_id = view.value["project_id"]
          table_id   = view.value["table_id"]
        }
      }

    }
  }

  dynamic "default_encryption_configuration" {
    for_each = var.default_encryption_configuration
    content {
      kms_key_name = default_encryption_configuration.value["kms_key_name"]
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

