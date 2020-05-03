terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

resource "google_compute_global_network_endpoint_group" "this" {
  default_port          = var.default_port
  description           = var.description
  name                  = var.name
  network_endpoint_type = var.network_endpoint_type
  project               = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

