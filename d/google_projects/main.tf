terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

data "google_projects" "this" {
  filter = var.filter
}

