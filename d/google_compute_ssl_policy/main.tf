terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

data "google_compute_ssl_policy" "this" {
  name    = var.name
  project = var.project
}

