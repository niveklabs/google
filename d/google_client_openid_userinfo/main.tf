terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

data "google_client_openid_userinfo" "this" {
}

