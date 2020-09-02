terraform {
  required_providers {
    google = ">= 3.20.0"
  }
}

data "google_container_registry_image" "this" {
  digest  = var.digest
  name    = var.name
  project = var.project
  region  = var.region
  tag     = var.tag
}

