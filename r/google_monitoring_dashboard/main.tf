terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_monitoring_dashboard" "this" {
  dashboard_json = var.dashboard_json
  project        = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

