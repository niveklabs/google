terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

data "google_organization" "this" {
  domain       = var.domain
  organization = var.organization
}

