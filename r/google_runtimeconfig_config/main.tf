terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_runtimeconfig_config" "this" {
  description = var.description
  name        = var.name
  project     = var.project
}

