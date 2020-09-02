terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_game_services_game_server_deployment" "this" {
  deployment_id = var.deployment_id
  description   = var.description
  labels        = var.labels
  location      = var.location
  project       = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

