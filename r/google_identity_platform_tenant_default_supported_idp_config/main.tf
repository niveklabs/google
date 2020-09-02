terraform {
  required_providers {
    google = ">= 3.22.0"
  }
}

resource "google_identity_platform_tenant_default_supported_idp_config" "this" {
  client_id     = var.client_id
  client_secret = var.client_secret
  enabled       = var.enabled
  idp_id        = var.idp_id
  project       = var.project
  tenant        = var.tenant

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

