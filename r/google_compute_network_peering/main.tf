terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_compute_network_peering" "this" {
  auto_create_routes   = var.auto_create_routes
  export_custom_routes = var.export_custom_routes
  import_custom_routes = var.import_custom_routes
  name                 = var.name
  network              = var.network
  peer_network         = var.peer_network
}

