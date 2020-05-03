terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

data "google_compute_backend_bucket" "this" {
  name    = var.name
  project = var.project
}

