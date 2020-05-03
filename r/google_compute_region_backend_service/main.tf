terraform {
  required_providers {
    google = ">= 3.17.0"
  }
}

resource "google_compute_region_backend_service" "this" {
  connection_draining_timeout_sec = var.connection_draining_timeout_sec
  description                     = var.description
  health_checks                   = var.health_checks
  load_balancing_scheme           = var.load_balancing_scheme
  name                            = var.name
  network                         = var.network
  project                         = var.project
  protocol                        = var.protocol
  region                          = var.region
  session_affinity                = var.session_affinity
  timeout_sec                     = var.timeout_sec

  dynamic "backend" {
    for_each = var.backend
    content {
      balancing_mode               = backend.value["balancing_mode"]
      capacity_scaler              = backend.value["capacity_scaler"]
      description                  = backend.value["description"]
      group                        = backend.value["group"]
      max_connections              = backend.value["max_connections"]
      max_connections_per_endpoint = backend.value["max_connections_per_endpoint"]
      max_connections_per_instance = backend.value["max_connections_per_instance"]
      max_rate                     = backend.value["max_rate"]
      max_rate_per_endpoint        = backend.value["max_rate_per_endpoint"]
      max_rate_per_instance        = backend.value["max_rate_per_instance"]
      max_utilization              = backend.value["max_utilization"]
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

