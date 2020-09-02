terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

data "google_compute_ssl_policy" "this" {
  name    = var.name
  project = var.project
}

