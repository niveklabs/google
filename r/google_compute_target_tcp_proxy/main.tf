terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_compute_target_tcp_proxy" "this" {
  backend_service = var.backend_service
  description     = var.description
  name            = var.name
  project         = var.project
  proxy_header    = var.proxy_header

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

