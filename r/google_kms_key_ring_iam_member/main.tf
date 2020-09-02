terraform {
  required_providers {
    google = ">= 3.22.0"
  }
}

resource "google_kms_key_ring_iam_member" "this" {
  key_ring_id = var.key_ring_id
  member      = var.member
  role        = var.role
}

