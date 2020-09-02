terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

data "google_compute_network" "this" {
  name    = var.name
  project = var.project
}

