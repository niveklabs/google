terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_identity_platform_inbound_saml_config" "this" {
  display_name = var.display_name
  enabled      = var.enabled
  name         = var.name
  project      = var.project

  dynamic "idp_config" {
    for_each = var.idp_config
    content {
      idp_entity_id = idp_config.value["idp_entity_id"]
      sign_request  = idp_config.value["sign_request"]
      sso_url       = idp_config.value["sso_url"]

      dynamic "idp_certificates" {
        for_each = idp_config.value.idp_certificates
        content {
          x509_certificate = idp_certificates.value["x509_certificate"]
        }
      }

    }
  }

  dynamic "sp_config" {
    for_each = var.sp_config
    content {
      callback_uri = sp_config.value["callback_uri"]
      sp_entity_id = sp_config.value["sp_entity_id"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

