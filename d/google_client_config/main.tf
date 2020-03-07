terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

data "google_client_config" "this" {
}

