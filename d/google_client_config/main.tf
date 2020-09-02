terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

data "google_client_config" "this" {
}

