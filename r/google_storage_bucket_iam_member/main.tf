terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

resource "google_storage_bucket_iam_member" "this" {
  bucket = var.bucket
  member = var.member
  role   = var.role
}

