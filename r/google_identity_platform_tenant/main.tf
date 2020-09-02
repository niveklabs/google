terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_identity_platform_tenant" "this" {
  allow_password_signup    = var.allow_password_signup
  disable_auth             = var.disable_auth
  display_name             = var.display_name
  enable_email_link_signin = var.enable_email_link_signin
  project                  = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

