terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

data "google_compute_global_address" "this" {
  name    = var.name
  project = var.project
}

