terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_compute_interconnect_attachment" "this" {
  admin_enabled            = var.admin_enabled
  bandwidth                = var.bandwidth
  candidate_subnets        = var.candidate_subnets
  description              = var.description
  edge_availability_domain = var.edge_availability_domain
  interconnect             = var.interconnect
  name                     = var.name
  project                  = var.project
  region                   = var.region
  router                   = var.router
  type                     = var.type
  vlan_tag8021q            = var.vlan_tag8021q

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

