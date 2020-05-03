module "google_app_engine_application" {
  source = "./modules/google/r/google_app_engine_application"

  auth_domain    = null
  location_id    = null
  project        = null
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
}
