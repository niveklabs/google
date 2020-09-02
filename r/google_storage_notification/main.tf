terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

resource "google_storage_notification" "this" {
  bucket             = var.bucket
  custom_attributes  = var.custom_attributes
  event_types        = var.event_types
  object_name_prefix = var.object_name_prefix
  payload_format     = var.payload_format
  topic              = var.topic
}

