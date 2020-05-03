terraform {
  required_providers {
    google = ">= 3.17.0"
  }
}

resource "google_compute_network_endpoint_group" "this" {
  default_port          = var.default_port
  description           = var.description
  name                  = var.name
  network               = var.network
  network_endpoint_type = var.network_endpoint_type
  project               = var.project
  subnetwork            = var.subnetwork
  zone                  = var.zone

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

