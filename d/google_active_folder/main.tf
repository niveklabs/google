terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

data "google_active_folder" "this" {
  display_name = var.display_name
  parent       = var.parent
}

