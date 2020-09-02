module "google_app_engine_application_url_dispatch_rules" {
  source = "./modules/google/r/google_app_engine_application_url_dispatch_rules"

  # project - (optional) is a type of string
  project = null

  dispatch_rules = [{
    domain  = null
    path    = null
    service = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
