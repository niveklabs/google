terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

data "google_compute_region_instance_group" "this" {
  name      = var.name
  project   = var.project
  region    = var.region
  self_link = var.self_link
}

