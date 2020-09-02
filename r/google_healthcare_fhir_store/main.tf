terraform {
  required_providers {
    google = ">= 3.20.0"
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

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

