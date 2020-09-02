terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_kms_key_ring_iam_policy" "this" {
  key_ring_id = var.key_ring_id
  policy_data = var.policy_data
}

