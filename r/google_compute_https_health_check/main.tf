terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_compute_https_health_check" "this" {
  check_interval_sec  = var.check_interval_sec
  description         = var.description
  healthy_threshold   = var.healthy_threshold
  host                = var.host
  name                = var.name
  port                = var.port
  project             = var.project
  request_path        = var.request_path
  timeout_sec         = var.timeout_sec
  unhealthy_threshold = var.unhealthy_threshold

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

