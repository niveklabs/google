terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

data "google_organization" "this" {
  domain       = var.domain
  organization = var.organization
}

