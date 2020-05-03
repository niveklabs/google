terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

data "google_compute_regions" "this" {
  project = var.project
  status  = var.status
}

