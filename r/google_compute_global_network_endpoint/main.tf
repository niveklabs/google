terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_compute_global_network_endpoint" "this" {
  fqdn                          = var.fqdn
  global_network_endpoint_group = var.global_network_endpoint_group
  ip_address                    = var.ip_address
  port                          = var.port
  project                       = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

