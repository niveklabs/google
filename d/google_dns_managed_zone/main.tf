terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

data "google_dns_managed_zone" "this" {
  name    = var.name
  project = var.project
}

