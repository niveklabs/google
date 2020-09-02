module "google_binary_authorization_attestor" {
  source = "./modules/google/r/google_binary_authorization_attestor"

  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  attestation_authority_note = [{
    delegation_service_account_email = null
    note_reference                   = null
    public_keys = [{
      ascii_armored_pgp_public_key = null
      comment                      = null
      id                           = null
      pkix_public_key = [{
        public_key_pem      = null
        signature_algorithm = null
      }]
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
