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

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
