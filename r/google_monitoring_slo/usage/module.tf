module "google_monitoring_slo" {
  source = "./modules/google/r/google_monitoring_slo"

  # calendar_period - (optional) is a type of string
  calendar_period = null
  # display_name - (optional) is a type of string
  display_name = null
  # goal - (required) is a type of number
  goal = null
  # project - (optional) is a type of string
  project = null
  # rolling_period_days - (optional) is a type of number
  rolling_period_days = null
  # service - (required) is a type of string
  service = null
  # slo_id - (optional) is a type of string
  slo_id = null

  basic_sli = [{
    latency = [{
      threshold = null
    }]
    location = []
    method   = []
    version  = []
  }]

  request_based_sli = [{
    distribution_cut = [{
      distribution_filter = null
      range = [{
        max = null
        min = null
      }]
    }]
    good_total_ratio = [{
      bad_service_filter   = null
      good_service_filter  = null
      total_service_filter = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
