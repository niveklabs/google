terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_compute_ssl_policy" "this" {
  custom_features = var.custom_features
  description     = var.description
  min_tls_version = var.min_tls_version
  name            = var.name
  profile         = var.profile
  project         = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

