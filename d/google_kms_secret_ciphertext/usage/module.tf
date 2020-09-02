module "google_kms_secret_ciphertext" {
  source = "./modules/google/d/google_kms_secret_ciphertext"

  # crypto_key - (required) is a type of string
  crypto_key = null
  # plaintext - (required) is a type of string
  plaintext = null
}
