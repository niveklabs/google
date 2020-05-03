terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_binary_authorization_attestor_iam_binding" "this" {
  attestor = var.attestor
  members  = var.members
  project  = var.project
  role     = var.role
}

