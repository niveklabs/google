terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

data "google_client_openid_userinfo" "this" {
}

