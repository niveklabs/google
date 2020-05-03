terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

resource "google_kms_key_ring_iam_binding" "this" {
  key_ring_id = var.key_ring_id
  members     = var.members
  role        = var.role
}

