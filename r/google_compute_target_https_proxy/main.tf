terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_compute_target_https_proxy" "this" {
  description      = var.description
  name             = var.name
  project          = var.project
  quic_override    = var.quic_override
  ssl_certificates = var.ssl_certificates
  ssl_policy       = var.ssl_policy
  url_map          = var.url_map

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

