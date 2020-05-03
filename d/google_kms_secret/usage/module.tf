module "google_kms_secret" {
  source = "./modules/google/d/google_kms_secret"

  ciphertext = null
  crypto_key = null
}
