terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

resource "google_sourcerepo_repository_iam_binding" "this" {
  members    = var.members
  project    = var.project
  repository = var.repository
  role       = var.role
}

