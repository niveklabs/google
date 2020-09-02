terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_dns_policy" "this" {
  description               = var.description
  enable_inbound_forwarding = var.enable_inbound_forwarding
  enable_logging            = var.enable_logging
  name                      = var.name
  project                   = var.project

  dynamic "alternative_name_server_config" {
    for_each = var.alternative_name_server_config
    content {

      dynamic "target_name_servers" {
        for_each = alternative_name_server_config.value.target_name_servers
        content {
          ipv4_address = target_name_servers.value["ipv4_address"]
        }
      }

    }
  }

  dynamic "networks" {
    for_each = var.networks
    content {
      network_url = networks.value["network_url"]
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

