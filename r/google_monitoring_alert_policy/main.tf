terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_monitoring_alert_policy" "this" {
  combiner              = var.combiner
  display_name          = var.display_name
  enabled               = var.enabled
  labels                = var.labels
  notification_channels = var.notification_channels
  project               = var.project
  user_labels           = var.user_labels

  dynamic "conditions" {
    for_each = var.conditions
    content {
      display_name = conditions.value["display_name"]

      dynamic "condition_absent" {
        for_each = conditions.value.condition_absent
        content {
          duration = condition_absent.value["duration"]
          filter   = condition_absent.value["filter"]

          dynamic "aggregations" {
            for_each = condition_absent.value.aggregations
            content {
              alignment_period     = aggregations.value["alignment_period"]
              cross_series_reducer = aggregations.value["cross_series_reducer"]
              group_by_fields      = aggregations.value["group_by_fields"]
              per_series_aligner   = aggregations.value["per_series_aligner"]
            }
          }

          dynamic "trigger" {
            for_each = condition_absent.value.trigger
            content {
              count   = trigger.value["count"]
              percent = trigger.value["percent"]
            }
          }

        }
      }

      dynamic "condition_threshold" {
        for_each = conditions.value.condition_threshold
        content {
          comparison         = condition_threshold.value["comparison"]
          denominator_filter = condition_threshold.value["denominator_filter"]
          duration           = condition_threshold.value["duration"]
          filter             = condition_threshold.value["filter"]
          threshold_value    = condition_threshold.value["threshold_value"]

          dynamic "aggregations" {
            for_each = condition_threshold.value.aggregations
            content {
              alignment_period     = aggregations.value["alignment_period"]
              cross_series_reducer = aggregations.value["cross_series_reducer"]
              group_by_fields      = aggregations.value["group_by_fields"]
              per_series_aligner   = aggregations.value["per_series_aligner"]
            }
          }

          dynamic "denominator_aggregations" {
            for_each = condition_threshold.value.denominator_aggregations
            content {
              alignment_period     = denominator_aggregations.value["alignment_period"]
              cross_series_reducer = denominator_aggregations.value["cross_series_reducer"]
              group_by_fields      = denominator_aggregations.value["group_by_fields"]
              per_series_aligner   = denominator_aggregations.value["per_series_aligner"]
            }
          }

          dynamic "trigger" {
            for_each = condition_threshold.value.trigger
            content {
              count   = trigger.value["count"]
              percent = trigger.value["percent"]
            }
          }

        }
      }

    }
  }

  dynamic "documentation" {
    for_each = var.documentation
    content {
      content   = documentation.value["content"]
      mime_type = documentation.value["mime_type"]
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

