module "google_service_account_iam_member" {
  source = "./modules/google/r/google_service_account_iam_member"

  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null
  # service_account_id - (required) is a type of string
  service_account_id = null
}
