terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_logging_organization_exclusion" "this" {
  description = var.description
  disabled    = var.disabled
  filter      = var.filter
  name        = var.name
  org_id      = var.org_id
}

