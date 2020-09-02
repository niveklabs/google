terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_monitoring_custom_service" "this" {
  display_name = var.display_name
  project      = var.project
  service_id   = var.service_id

  dynamic "telemetry" {
    for_each = var.telemetry
    content {
      resource_name = telemetry.value["resource_name"]
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

