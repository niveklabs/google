terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

data "google_folder_organization_policy" "this" {
  constraint = var.constraint
  folder     = var.folder
}

