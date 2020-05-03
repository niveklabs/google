terraform {
  required_providers {
    google = ">= 3.17.0"
  }
}

data "google_compute_regions" "this" {
  project = var.project
  status  = var.status
}

