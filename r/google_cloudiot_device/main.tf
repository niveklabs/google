terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_cloudiot_device" "this" {
  blocked   = var.blocked
  log_level = var.log_level
  metadata  = var.metadata
  name      = var.name
  registry  = var.registry

  dynamic "credentials" {
    for_each = var.credentials
    content {
      expiration_time = credentials.value["expiration_time"]

      dynamic "public_key" {
        for_each = credentials.value.public_key
        content {
          format = public_key.value["format"]
          key    = public_key.value["key"]
        }
      }

    }
  }

  dynamic "gateway_config" {
    for_each = var.gateway_config
    content {
      gateway_auth_method = gateway_config.value["gateway_auth_method"]
      gateway_type        = gateway_config.value["gateway_type"]
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

