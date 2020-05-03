terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_project_usage_export_bucket" "this" {
  bucket_name = var.bucket_name
  prefix      = var.prefix
  project     = var.project
}

