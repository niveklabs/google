terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_container_registry" "this" {
  location = var.location
  project  = var.project
}

