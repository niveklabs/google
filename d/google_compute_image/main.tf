terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

data "google_compute_image" "this" {
  family  = var.family
  name    = var.name
  project = var.project
}

