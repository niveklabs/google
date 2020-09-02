terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

data "google_compute_node_types" "this" {
  project = var.project
  zone    = var.zone
}

