terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

data "google_compute_network_endpoint_group" "this" {
  name      = var.name
  project   = var.project
  self_link = var.self_link
  zone      = var.zone
}

