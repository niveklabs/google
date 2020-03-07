module "google_kms_crypto_key" {
  source = "./google/d/google_kms_crypto_key"

  key_ring = null
  name     = null
}
