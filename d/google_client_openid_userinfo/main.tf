terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

data "google_client_openid_userinfo" "this" {
}

