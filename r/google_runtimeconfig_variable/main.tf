terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_runtimeconfig_variable" "this" {
  name    = var.name
  parent  = var.parent
  project = var.project
  text    = var.text
  value   = var.value
}

