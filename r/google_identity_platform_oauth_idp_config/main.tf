terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

resource "google_identity_platform_oauth_idp_config" "this" {
  client_id     = var.client_id
  client_secret = var.client_secret
  display_name  = var.display_name
  enabled       = var.enabled
  issuer        = var.issuer
  name          = var.name
  project       = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

