module "google_monitoring_alert_policy" {
  source = "./modules/google/r/google_monitoring_alert_policy"

  combiner              = null
  display_name          = null
  enabled               = null
  labels                = []
  notification_channels = []
  project               = null
  user_labels           = {}

  conditions = [{
    condition_absent = [{
      aggregations = [{
        alignment_period     = null
        cross_series_reducer = null
        group_by_fields      = []
        per_series_aligner   = null
      }]
      duration = null
      filter   = null
      trigger = [{
        count   = null
        percent = null
      }]
    }]
    condition_threshold = [{
      aggregations = [{
        alignment_period     = null
        cross_series_reducer = null
        group_by_fields      = []
        per_series_aligner   = null
      }]
      comparison = null
      denominator_aggregations = [{
        alignment_period     = null
        cross_series_reducer = null
        group_by_fields      = []
        per_series_aligner   = null
      }]
      denominator_filter = null
      duration           = null
      filter             = null
      threshold_value    = null
      trigger = [{
        count   = null
        percent = null
      }]
    }]
    display_name = null
    name         = null
  }]

  documentation = [{
    content   = null
    mime_type = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
