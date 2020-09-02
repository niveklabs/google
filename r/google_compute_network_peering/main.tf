terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_compute_network_peering" "this" {
  auto_create_routes                  = var.auto_create_routes
  export_custom_routes                = var.export_custom_routes
  export_subnet_routes_with_public_ip = var.export_subnet_routes_with_public_ip
  import_custom_routes                = var.import_custom_routes
  import_subnet_routes_with_public_ip = var.import_subnet_routes_with_public_ip
  name                                = var.name
  network                             = var.network
  peer_network                        = var.peer_network

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

