terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

data "google_client_config" "this" {
}

