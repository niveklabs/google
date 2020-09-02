terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

data "google_dns_managed_zone" "this" {
  name    = var.name
  project = var.project
}

