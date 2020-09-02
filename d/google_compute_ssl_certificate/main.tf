terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

data "google_compute_ssl_certificate" "this" {
  name    = var.name
  project = var.project
}

