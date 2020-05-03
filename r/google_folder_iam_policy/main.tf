terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

resource "google_folder_iam_policy" "this" {
  folder      = var.folder
  policy_data = var.policy_data
}

