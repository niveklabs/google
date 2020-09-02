module "google_monitoring_alert_policy" {
  source = "./modules/google/r/google_monitoring_alert_policy"

  # combiner - (required) is a type of string
  combiner = null
  # display_name - (required) is a type of string
  display_name = null
  # enabled - (optional) is a type of bool
  enabled = null
  # labels - (optional) is a type of list of string
  labels = []
  # notification_channels - (optional) is a type of list of string
  notification_channels = []
  # project - (optional) is a type of string
  project = null
  # user_labels - (optional) is a type of map of string
  user_labels = {}

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
