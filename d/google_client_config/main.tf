terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

data "google_client_config" "this" {
}

