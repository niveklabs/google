terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

resource "google_monitoring_slo" "this" {
  calendar_period     = var.calendar_period
  display_name        = var.display_name
  goal                = var.goal
  project             = var.project
  rolling_period_days = var.rolling_period_days
  service             = var.service
  slo_id              = var.slo_id

  dynamic "basic_sli" {
    for_each = var.basic_sli
    content {
      location = basic_sli.value["location"]
      method   = basic_sli.value["method"]
      version  = basic_sli.value["version"]

      dynamic "latency" {
        for_each = basic_sli.value.latency
        content {
          threshold = latency.value["threshold"]
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

