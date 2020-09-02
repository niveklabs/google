terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

data "google_secret_manager_secret_version" "this" {
  project = var.project
  secret  = var.secret
  version = var.version
}

