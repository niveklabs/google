module "google_identity_platform_default_supported_idp_config" {
  source = "./modules/google/r/google_identity_platform_default_supported_idp_config"

  # client_id - (required) is a type of string
  client_id = null
  # client_secret - (required) is a type of string
  client_secret = null
  # enabled - (optional) is a type of bool
  enabled = null
  # idp_id - (required) is a type of string
  idp_id = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
