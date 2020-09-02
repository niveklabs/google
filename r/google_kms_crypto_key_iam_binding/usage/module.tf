module "google_kms_crypto_key_iam_binding" {
  source = "./modules/google/r/google_kms_crypto_key_iam_binding"

  # crypto_key_id - (required) is a type of string
  crypto_key_id = null
  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null
}
