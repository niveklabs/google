module "google_app_engine_domain_mapping" {
  source = "./modules/google/r/google_app_engine_domain_mapping"

  domain_name       = null
  override_strategy = null
  project           = null

  ssl_settings = [{
    certificate_id                 = null
    pending_managed_certificate_id = null
    ssl_management_type            = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
