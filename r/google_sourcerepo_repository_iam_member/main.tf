terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_sourcerepo_repository_iam_member" "this" {
  member     = var.member
  project    = var.project
  repository = var.repository
  role       = var.role
}

