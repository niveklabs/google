terraform {
  required_providers {
    google = ">= 3.22.0"
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

  dynamic "request_based_sli" {
    for_each = var.request_based_sli
    content {

      dynamic "distribution_cut" {
        for_each = request_based_sli.value.distribution_cut
        content {
          distribution_filter = distribution_cut.value["distribution_filter"]

          dynamic "range" {
            for_each = distribution_cut.value.range
            content {
              max = range.value["max"]
              min = range.value["min"]
            }
          }

        }
      }

      dynamic "good_total_ratio" {
        for_each = request_based_sli.value.good_total_ratio
        content {
          bad_service_filter   = good_total_ratio.value["bad_service_filter"]
          good_service_filter  = good_total_ratio.value["good_service_filter"]
          total_service_filter = good_total_ratio.value["total_service_filter"]
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

