terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

data "google_container_engine_versions" "this" {
  location       = var.location
  project        = var.project
  region         = var.region
  version_prefix = var.version_prefix
  zone           = var.zone
}

