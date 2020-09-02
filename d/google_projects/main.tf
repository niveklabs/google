terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

data "google_projects" "this" {
  filter = var.filter
}

