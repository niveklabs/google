module "google_identity_platform_tenant_oauth_idp_config" {
  source = "./modules/google/r/google_identity_platform_tenant_oauth_idp_config"

  client_id     = null
  client_secret = null
  display_name  = null
  enabled       = null
  issuer        = null
  name          = null
  project       = null
  tenant        = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
