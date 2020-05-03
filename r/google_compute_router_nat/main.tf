terraform {
  required_providers {
    google = ">= 3.17.0"
  }
}

resource "google_compute_router_nat" "this" {
  drain_nat_ips                      = var.drain_nat_ips
  icmp_idle_timeout_sec              = var.icmp_idle_timeout_sec
  min_ports_per_vm                   = var.min_ports_per_vm
  name                               = var.name
  nat_ip_allocate_option             = var.nat_ip_allocate_option
  nat_ips                            = var.nat_ips
  project                            = var.project
  region                             = var.region
  router                             = var.router
  source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
  tcp_established_idle_timeout_sec   = var.tcp_established_idle_timeout_sec
  tcp_transitory_idle_timeout_sec    = var.tcp_transitory_idle_timeout_sec
  udp_idle_timeout_sec               = var.udp_idle_timeout_sec

  dynamic "log_config" {
    for_each = var.log_config
    content {
      enable = log_config.value["enable"]
      filter = log_config.value["filter"]
    }
  }

  dynamic "subnetwork" {
    for_each = var.subnetwork
    content {
      name                     = subnetwork.value["name"]
      secondary_ip_range_names = subnetwork.value["secondary_ip_range_names"]
      source_ip_ranges_to_nat  = subnetwork.value["source_ip_ranges_to_nat"]
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

