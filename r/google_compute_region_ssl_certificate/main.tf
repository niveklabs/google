terraform {
  required_providers {
    google = ">= 3.15.0"
  }
}

resource "google_compute_region_ssl_certificate" "this" {
  certificate = var.certificate
  description = var.description
  name        = var.name
  name_prefix = var.name_prefix
  private_key = var.private_key
  project     = var.project
  region      = var.region

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

