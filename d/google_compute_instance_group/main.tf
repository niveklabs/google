terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

data "google_compute_instance_group" "this" {
  name      = var.name
  project   = var.project
  self_link = var.self_link
  zone      = var.zone
}

