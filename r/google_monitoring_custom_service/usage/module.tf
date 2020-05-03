module "google_monitoring_custom_service" {
  source = "./modules/google/r/google_monitoring_custom_service"

  display_name = null
  project      = null
  service_id   = null

  telemetry = [{
    resource_name = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
