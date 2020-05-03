module "google_monitoring_slo" {
  source = "./modules/google/r/google_monitoring_slo"

  calendar_period     = null
  display_name        = null
  goal                = null
  project             = null
  rolling_period_days = null
  service             = null
  slo_id              = null

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
