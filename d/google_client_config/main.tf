terraform {
  required_providers {
    google = ">= 3.22.0"
  }
}

data "google_client_config" "this" {
}

