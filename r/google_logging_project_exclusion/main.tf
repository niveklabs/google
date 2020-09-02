terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_logging_project_exclusion" "this" {
  description = var.description
  disabled    = var.disabled
  filter      = var.filter
  name        = var.name
  project     = var.project
}

