module "google_identity_platform_tenant_oauth_idp_config" {
  source = "./modules/google/r/google_identity_platform_tenant_oauth_idp_config"

  # client_id - (required) is a type of string
  client_id = null
  # client_secret - (optional) is a type of string
  client_secret = null
  # display_name - (required) is a type of string
  display_name = null
  # enabled - (optional) is a type of bool
  enabled = null
  # issuer - (required) is a type of string
  issuer = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # tenant - (required) is a type of string
  tenant = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
