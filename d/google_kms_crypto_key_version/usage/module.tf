module "google_kms_crypto_key_version" {
  source = "./modules/google/d/google_kms_crypto_key_version"

  # crypto_key - (required) is a type of string
  crypto_key = null
  # version - (optional) is a type of number
  version = null
}
