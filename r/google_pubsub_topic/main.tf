terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_pubsub_topic" "this" {
  kms_key_name = var.kms_key_name
  labels       = var.labels
  name         = var.name
  project      = var.project

  dynamic "message_storage_policy" {
    for_each = var.message_storage_policy
    content {
      allowed_persistence_regions = message_storage_policy.value["allowed_persistence_regions"]
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

