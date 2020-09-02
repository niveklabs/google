terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_dns_record_set" "this" {
  managed_zone = var.managed_zone
  name         = var.name
  project      = var.project
  rrdatas      = var.rrdatas
  ttl          = var.ttl
  type         = var.type
}

