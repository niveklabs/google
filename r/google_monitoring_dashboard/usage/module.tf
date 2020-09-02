module "google_monitoring_dashboard" {
  source = "./modules/google/r/google_monitoring_dashboard"

  # dashboard_json - (required) is a type of string
  dashboard_json = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
