terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_logging_folder_exclusion" "this" {
  description = var.description
  disabled    = var.disabled
  filter      = var.filter
  folder      = var.folder
  name        = var.name
}

