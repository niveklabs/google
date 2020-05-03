module "google_kms_secret" {
  source = "./modules/google/d/google_kms_secret"

  additional_authenticated_data = null
  ciphertext                    = null
  crypto_key                    = null
}
