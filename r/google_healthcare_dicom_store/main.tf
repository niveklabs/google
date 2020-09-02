terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_healthcare_dicom_store" "this" {
  dataset = var.dataset
  labels  = var.labels
  name    = var.name

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

