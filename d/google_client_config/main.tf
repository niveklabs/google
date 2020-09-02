terraform {
  required_providers {
    google = ">= 3.20.0"
  }
}

data "google_client_config" "this" {
}

