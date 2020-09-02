terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_bigtable_instance_iam_binding" "this" {
  instance = var.instance
  members  = var.members
  project  = var.project
  role     = var.role
}

