terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

data "google_compute_network" "this" {
  name    = var.name
  project = var.project
}

