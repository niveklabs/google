module "google_kms_crypto_key_version" {
  source = "./google/d/google_kms_crypto_key_version"

  crypto_key = null
  version    = null
}
