terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_compute_project_default_network_tier" "this" {
  network_tier = var.network_tier
  project      = var.project
}

