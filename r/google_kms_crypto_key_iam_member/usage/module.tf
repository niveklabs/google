module "google_kms_crypto_key_iam_member" {
  source = "./modules/google/r/google_kms_crypto_key_iam_member"

  # crypto_key_id - (required) is a type of string
  crypto_key_id = null
  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
