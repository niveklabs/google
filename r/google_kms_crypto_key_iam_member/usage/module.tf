module "google_kms_crypto_key_iam_member" {
  source = "./modules/google/r/google_kms_crypto_key_iam_member"

  crypto_key_id = null
  member        = null
  role          = null
}
