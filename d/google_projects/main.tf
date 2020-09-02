terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

data "google_projects" "this" {
  filter = var.filter
}

