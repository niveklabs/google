module "google_kms_secret_ciphertext" {
  source = "./modules/google/d/google_kms_secret_ciphertext"

  crypto_key = null
  plaintext  = null
}
