terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

data "google_client_config" "this" {
}

