module "google_monitoring_custom_service" {
  source = "./modules/google/r/google_monitoring_custom_service"

  # display_name - (optional) is a type of string
  display_name = null
  # project - (optional) is a type of string
  project = null
  # service_id - (optional) is a type of string
  service_id = null

  telemetry = [{
    resource_name = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
