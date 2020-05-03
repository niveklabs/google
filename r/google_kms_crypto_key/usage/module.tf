module "google_kms_crypto_key" {
  source = "./modules/google/r/google_kms_crypto_key"

  key_ring        = null
  labels          = {}
  name            = null
  purpose         = null
  rotation_period = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  version_template = [{
    algorithm        = null
    protection_level = null
  }]
}
