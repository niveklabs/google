terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

data "google_client_openid_userinfo" "this" {
}

