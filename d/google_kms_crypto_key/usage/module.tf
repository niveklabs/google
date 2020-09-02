module "google_kms_crypto_key" {
  source = "./modules/google/d/google_kms_crypto_key"

  # key_ring - (required) is a type of string
  key_ring = null
  # name - (required) is a type of string
  name = null
}
