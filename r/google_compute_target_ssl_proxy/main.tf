terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_compute_target_ssl_proxy" "this" {
  backend_service  = var.backend_service
  description      = var.description
  name             = var.name
  project          = var.project
  proxy_header     = var.proxy_header
  ssl_certificates = var.ssl_certificates
  ssl_policy       = var.ssl_policy

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

