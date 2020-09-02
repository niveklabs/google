terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_monitoring_notification_channel" "this" {
  description  = var.description
  display_name = var.display_name
  enabled      = var.enabled
  labels       = var.labels
  project      = var.project
  type         = var.type
  user_labels  = var.user_labels

  dynamic "sensitive_labels" {
    for_each = var.sensitive_labels
    content {
      auth_token  = sensitive_labels.value["auth_token"]
      password    = sensitive_labels.value["password"]
      service_key = sensitive_labels.value["service_key"]
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

