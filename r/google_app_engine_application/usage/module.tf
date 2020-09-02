module "google_app_engine_application" {
  source = "./modules/google/r/google_app_engine_application"

  # auth_domain - (optional) is a type of string
  auth_domain = null
  # location_id - (required) is a type of string
  location_id = null
  # project - (optional) is a type of string
  project = null
  # serving_status - (optional) is a type of string
  serving_status = null

  feature_settings = [{
    split_health_checks = null
  }]

  iap = [{
    enabled                     = null
    oauth2_client_id            = null
    oauth2_client_secret        = null
    oauth2_client_secret_sha256 = null
  }]

  timeouts = [{
    create = null
    update = null
  }]
}
