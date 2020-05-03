terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_compute_project_metadata" "this" {
  metadata = var.metadata
  project  = var.project
}

