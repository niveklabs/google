terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_compute_project_default_network_tier" "this" {
  network_tier = var.network_tier
  project      = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
    }
  }

}

