terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

data "google_compute_backend_bucket" "this" {
  name    = var.name
  project = var.project
}

