module "google_kms_secret" {
  source = "./modules/google/d/google_kms_secret"

  # additional_authenticated_data - (optional) is a type of string
  additional_authenticated_data = null
  # ciphertext - (required) is a type of string
  ciphertext = null
  # crypto_key - (required) is a type of string
  crypto_key = null
}
