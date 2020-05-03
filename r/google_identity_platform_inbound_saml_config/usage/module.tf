module "google_identity_platform_inbound_saml_config" {
  source = "./modules/google/r/google_identity_platform_inbound_saml_config"

  display_name = null
  enabled      = null
  name         = null
  project      = null

  idp_config = [{
    idp_certificates = [{
      x509_certificate = null
    }]
    idp_entity_id = null
    sign_request  = null
    sso_url       = null
  }]

  sp_config = [{
    callback_uri = null
    sp_certificates = [{
      x509_certificate = null
    }]
    sp_entity_id = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
