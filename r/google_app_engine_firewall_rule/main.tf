terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_app_engine_firewall_rule" "this" {
  action       = var.action
  description  = var.description
  priority     = var.priority
  project      = var.project
  source_range = var.source_range

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

