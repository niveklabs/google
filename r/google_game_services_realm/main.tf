terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_game_services_realm" "this" {
  description = var.description
  labels      = var.labels
  location    = var.location
  project     = var.project
  realm_id    = var.realm_id
  time_zone   = var.time_zone

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

