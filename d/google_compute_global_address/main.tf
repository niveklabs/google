terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

data "google_compute_global_address" "this" {
  name    = var.name
  project = var.project
}

