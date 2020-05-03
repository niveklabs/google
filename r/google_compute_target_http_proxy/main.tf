terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_compute_target_http_proxy" "this" {
  description = var.description
  name        = var.name
  project     = var.project
  url_map     = var.url_map

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

