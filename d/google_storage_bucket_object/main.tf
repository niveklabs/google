terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

data "google_storage_bucket_object" "this" {
  bucket = var.bucket
  name   = var.name
}

