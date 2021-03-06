terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_compute_subnetwork" "this" {
  description              = var.description
  enable_flow_logs         = var.enable_flow_logs
  ip_cidr_range            = var.ip_cidr_range
  name                     = var.name
  network                  = var.network
  private_ip_google_access = var.private_ip_google_access
  project                  = var.project
  region                   = var.region
  secondary_ip_range       = var.secondary_ip_range

  dynamic "log_config" {
    for_each = var.log_config
    content {
      aggregation_interval = log_config.value["aggregation_interval"]
      filter_expr          = log_config.value["filter_expr"]
      flow_sampling        = log_config.value["flow_sampling"]
      metadata             = log_config.value["metadata"]
      metadata_fields      = log_config.value["metadata_fields"]
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

