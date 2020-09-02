terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

data "google_client_openid_userinfo" "this" {
}

