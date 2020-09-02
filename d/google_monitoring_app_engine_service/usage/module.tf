module "google_monitoring_app_engine_service" {
  source = "./modules/google/d/google_monitoring_app_engine_service"

  # module_id - (required) is a type of string
  module_id = null
  # project - (optional) is a type of string
  project = null
}
