terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_compute_backend_service_signed_url_key" "this" {
  backend_service = var.backend_service
  key_value       = var.key_value
  name            = var.name
  project         = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

