module "google_kms_secret_ciphertext" {
  source = "./google/d/google_kms_secret_ciphertext"

  crypto_key = null
  plaintext  = null
}
