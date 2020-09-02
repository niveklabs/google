terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_storage_bucket_iam_policy" "this" {
  bucket      = var.bucket
  policy_data = var.policy_data
}

