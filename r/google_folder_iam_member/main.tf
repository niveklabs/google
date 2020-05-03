terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_folder_iam_member" "this" {
  folder = var.folder
  member = var.member
  role   = var.role
}

