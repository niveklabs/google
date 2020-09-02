terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_compute_route" "this" {
  description            = var.description
  dest_range             = var.dest_range
  name                   = var.name
  network                = var.network
  next_hop_gateway       = var.next_hop_gateway
  next_hop_ilb           = var.next_hop_ilb
  next_hop_instance      = var.next_hop_instance
  next_hop_instance_zone = var.next_hop_instance_zone
  next_hop_ip            = var.next_hop_ip
  next_hop_vpn_tunnel    = var.next_hop_vpn_tunnel
  priority               = var.priority
  project                = var.project
  tags                   = var.tags

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

