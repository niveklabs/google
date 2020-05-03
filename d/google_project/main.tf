terraform {
  required_providers {
    google = ">= 3.15.0"
  }
}

data "google_project" "this" {
  project_id = var.project_id
}

