terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_compute_target_pool" "this" {
  backup_pool      = var.backup_pool
  description      = var.description
  failover_ratio   = var.failover_ratio
  health_checks    = var.health_checks
  instances        = var.instances
  name             = var.name
  project          = var.project
  region           = var.region
  session_affinity = var.session_affinity

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

