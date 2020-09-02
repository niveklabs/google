terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

data "google_cloudfunctions_function" "this" {
  name    = var.name
  project = var.project
  region  = var.region
}

