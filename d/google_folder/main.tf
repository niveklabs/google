terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

data "google_folder" "this" {
  folder              = var.folder
  lookup_organization = var.lookup_organization
}

