terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_compute_network_endpoint" "this" {
  instance               = var.instance
  ip_address             = var.ip_address
  network_endpoint_group = var.network_endpoint_group
  port                   = var.port
  project                = var.project
  zone                   = var.zone

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

