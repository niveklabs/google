terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_storage_bucket_iam_binding" "this" {
  bucket  = var.bucket
  members = var.members
  role    = var.role
}

