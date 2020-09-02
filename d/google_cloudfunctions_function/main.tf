terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

data "google_cloudfunctions_function" "this" {
  name    = var.name
  project = var.project
  region  = var.region
}

