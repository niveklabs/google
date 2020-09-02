terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_compute_network_peering_routes_config" "this" {
  export_custom_routes = var.export_custom_routes
  import_custom_routes = var.import_custom_routes
  network              = var.network
  peering              = var.peering
  project              = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

