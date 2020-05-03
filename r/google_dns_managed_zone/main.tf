terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_dns_managed_zone" "this" {
  description = var.description
  dns_name    = var.dns_name
  labels      = var.labels
  name        = var.name
  project     = var.project
  visibility  = var.visibility

  dynamic "dnssec_config" {
    for_each = var.dnssec_config
    content {
      kind          = dnssec_config.value["kind"]
      non_existence = dnssec_config.value["non_existence"]
      state         = dnssec_config.value["state"]

      dynamic "default_key_specs" {
        for_each = dnssec_config.value.default_key_specs
        content {
          algorithm  = default_key_specs.value["algorithm"]
          key_length = default_key_specs.value["key_length"]
          key_type   = default_key_specs.value["key_type"]
          kind       = default_key_specs.value["kind"]
        }
      }

    }
  }

  dynamic "private_visibility_config" {
    for_each = var.private_visibility_config
    content {

      dynamic "networks" {
        for_each = private_visibility_config.value.networks
        content {
          network_url = networks.value["network_url"]
        }
      }

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

