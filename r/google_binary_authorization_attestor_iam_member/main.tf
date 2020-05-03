terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_binary_authorization_attestor_iam_member" "this" {
  attestor = var.attestor
  member   = var.member
  project  = var.project
  role     = var.role
}

