terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

resource "google_bigtable_instance_iam_member" "this" {
  instance = var.instance
  member   = var.member
  project  = var.project
  role     = var.role
}

