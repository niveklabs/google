terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

data "google_organization" "this" {
  domain       = var.domain
  organization = var.organization
}

