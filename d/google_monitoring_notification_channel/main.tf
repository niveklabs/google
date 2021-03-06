terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

data "google_monitoring_notification_channel" "this" {
  display_name = var.display_name
  labels       = var.labels
  project      = var.project
  type         = var.type
  user_labels  = var.user_labels
}

