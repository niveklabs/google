terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

data "google_compute_zones" "this" {
  project = var.project
  region  = var.region
  status  = var.status
}

