terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

data "google_dns_keys" "this" {
  managed_zone = var.managed_zone
  project      = var.project
}

