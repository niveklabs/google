terraform {
  required_providers {
    google = ">= 3.20.0"
  }
}

data "google_kms_key_ring" "this" {
  location = var.location
  name     = var.name
  project  = var.project
}

