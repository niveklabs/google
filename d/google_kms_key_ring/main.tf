terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

data "google_kms_key_ring" "this" {
  location = var.location
  name     = var.name
  project  = var.project
}

