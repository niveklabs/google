terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

data "google_compute_vpn_gateway" "this" {
  name    = var.name
  project = var.project
  region  = var.region
}

