terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_bigtable_instance_iam_member" "this" {
  instance = var.instance
  member   = var.member
  project  = var.project
  role     = var.role
}

