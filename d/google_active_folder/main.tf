terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

data "google_active_folder" "this" {
  display_name = var.display_name
  parent       = var.parent
}

