module "google_identity_platform_tenant" {
  source = "./modules/google/r/google_identity_platform_tenant"

  allow_password_signup    = null
  disable_auth             = null
  display_name             = null
  enable_email_link_signin = null
  project                  = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
