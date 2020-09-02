terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_healthcare_fhir_store" "this" {
  dataset                       = var.dataset
  disable_referential_integrity = var.disable_referential_integrity
  disable_resource_versioning   = var.disable_resource_versioning
  enable_history_import         = var.enable_history_import
  enable_update_create          = var.enable_update_create
  labels                        = var.labels
  name                          = var.name
  version                       = var.version

  dynamic "notification_config" {
    for_each = var.notification_config
    content {
      pubsub_topic = notification_config.value["pubsub_topic"]
    }
  }

  dynamic "stream_configs" {
    for_each = var.stream_configs
    content {
      resource_types = stream_configs.value["resource_types"]

      dynamic "bigquery_destination" {
        for_each = stream_configs.value.bigquery_destination
        content {
          dataset_uri = bigquery_destination.value["dataset_uri"]

          dynamic "schema_config" {
            for_each = bigquery_destination.value.schema_config
            content {
              recursive_structure_depth = schema_config.value["recursive_structure_depth"]
              schema_type               = schema_config.value["schema_type"]
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

