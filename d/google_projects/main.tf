terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

data "google_projects" "this" {
  filter = var.filter
}

