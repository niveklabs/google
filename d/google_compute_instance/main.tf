terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

data "google_compute_instance" "this" {
  name      = var.name
  project   = var.project
  self_link = var.self_link
  zone      = var.zone
}

