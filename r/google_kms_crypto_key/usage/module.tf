module "google_kms_crypto_key" {
  source = "./modules/google/r/google_kms_crypto_key"

  # key_ring - (required) is a type of string
  key_ring = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # purpose - (optional) is a type of string
  purpose = null
  # rotation_period - (optional) is a type of string
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
