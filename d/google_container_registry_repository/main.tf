terraform {
  required_providers {
    google = ">= 3.17.0"
  }
}

data "google_container_registry_repository" "this" {
  project = var.project
  region  = var.region
}

