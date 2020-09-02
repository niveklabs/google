terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

data "google_storage_bucket_object" "this" {
  bucket = var.bucket
  name   = var.name
}

