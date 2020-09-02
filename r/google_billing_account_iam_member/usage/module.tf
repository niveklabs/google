module "google_billing_account_iam_member" {
  source = "./modules/google/r/google_billing_account_iam_member"

  # billing_account_id - (required) is a type of string
  billing_account_id = null
  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null
}
