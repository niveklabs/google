terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_active_directory_domain_trust" "this" {
  domain                   = var.domain
  project                  = var.project
  selective_authentication = var.selective_authentication
  target_dns_ip_addresses  = var.target_dns_ip_addresses
  target_domain_name       = var.target_domain_name
  trust_direction          = var.trust_direction
  trust_handshake_secret   = var.trust_handshake_secret
  trust_type               = var.trust_type

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

