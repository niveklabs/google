terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

data "google_project_organization_policy" "this" {
  constraint = var.constraint
  project    = var.project
}

