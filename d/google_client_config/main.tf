terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

data "google_client_config" "this" {
}

