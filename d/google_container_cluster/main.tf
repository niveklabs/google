terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

data "google_container_cluster" "this" {
  location = var.location
  name     = var.name
  project  = var.project
  region   = var.region
  zone     = var.zone
}

