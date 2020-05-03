terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_storage_bucket_iam_policy" "this" {
  bucket      = var.bucket
  policy_data = var.policy_data
}

