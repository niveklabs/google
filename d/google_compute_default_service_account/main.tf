terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

data "google_compute_default_service_account" "this" {
  project = var.project
}

