module "google_kms_secret_ciphertext" {
  source = "./google/r/google_kms_secret_ciphertext"

  crypto_key = null
  plaintext  = null

  timeouts = [{
    create = null
    delete = null
  }]
}
