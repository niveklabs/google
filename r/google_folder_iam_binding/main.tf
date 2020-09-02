terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_folder_iam_binding" "this" {
  folder  = var.folder
  members = var.members
  role    = var.role
}

