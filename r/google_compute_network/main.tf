terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

resource "google_compute_network" "this" {
  auto_create_subnetworks         = var.auto_create_subnetworks
  delete_default_routes_on_create = var.delete_default_routes_on_create
  description                     = var.description
  name                            = var.name
  project                         = var.project
  routing_mode                    = var.routing_mode

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

