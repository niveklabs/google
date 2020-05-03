terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

data "google_compute_backend_service" "this" {
  name    = var.name
  project = var.project
}

