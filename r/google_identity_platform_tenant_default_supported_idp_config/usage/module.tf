module "google_identity_platform_tenant_default_supported_idp_config" {
  source = "./modules/google/r/google_identity_platform_tenant_default_supported_idp_config"

  client_id     = null
  client_secret = null
  enabled       = null
  idp_id        = null
  project       = null
  tenant        = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
