terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_spanner_instance_iam_member" "this" {
  instance = var.instance
  member   = var.member
  project  = var.project
  role     = var.role
}

