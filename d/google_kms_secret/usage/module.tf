module "google_kms_secret" {
  source = "./google/d/google_kms_secret"

  ciphertext = null
  crypto_key = null
}
