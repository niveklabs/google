terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

data "google_client_openid_userinfo" "this" {
}

