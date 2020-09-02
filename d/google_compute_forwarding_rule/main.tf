terraform {
  required_providers {
    google = ">= 3.22.0"
  }
}

data "google_compute_forwarding_rule" "this" {
  name    = var.name
  project = var.project
  region  = var.region
}

