module "google_identity_platform_tenant" {
  source = "./modules/google/r/google_identity_platform_tenant"

  # allow_password_signup - (optional) is a type of bool
  allow_password_signup = null
  # disable_auth - (optional) is a type of bool
  disable_auth = null
  # display_name - (required) is a type of string
  display_name = null
  # enable_email_link_signin - (optional) is a type of bool
  enable_email_link_signin = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
