terraform {
  required_providers {
    google = ">= 3.17.0"
  }
}

data "google_projects" "this" {
  filter = var.filter
}

