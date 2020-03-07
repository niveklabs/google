module "google_binary_authorization_attestor" {
  source = "./google/r/google_binary_authorization_attestor"

  description = null
  name        = null
  project     = null

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
