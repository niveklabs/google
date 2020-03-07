terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

data "google_compute_router" "this" {
  name    = var.name
  network = var.network
  project = var.project
  region  = var.region
}

