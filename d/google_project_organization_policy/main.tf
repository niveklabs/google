terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

data "google_project_organization_policy" "this" {
  constraint = var.constraint
  project    = var.project
}

