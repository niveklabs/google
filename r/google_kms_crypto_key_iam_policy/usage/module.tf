module "google_kms_crypto_key_iam_policy" {
  source = "./modules/google/r/google_kms_crypto_key_iam_policy"

  # crypto_key_id - (required) is a type of string
  crypto_key_id = null
  # policy_data - (required) is a type of string
  policy_data = null
}
