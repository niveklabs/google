terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

data "google_compute_global_address" "this" {
  name    = var.name
  project = var.project
}

