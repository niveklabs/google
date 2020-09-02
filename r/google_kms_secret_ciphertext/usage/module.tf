module "google_kms_secret_ciphertext" {
  source = "./modules/google/r/google_kms_secret_ciphertext"

  # additional_authenticated_data - (optional) is a type of string
  additional_authenticated_data = null
  # crypto_key - (required) is a type of string
  crypto_key = null
  # plaintext - (required) is a type of string
  plaintext = null

  timeouts = [{
    create = null
    delete = null
  }]
}
