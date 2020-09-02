terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

data "google_projects" "this" {
  filter = var.filter
}

