terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

data "google_composer_image_versions" "this" {
  project = var.project
  region  = var.region
}

