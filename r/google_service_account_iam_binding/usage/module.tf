module "google_service_account_iam_binding" {
  source = "./modules/google/r/google_service_account_iam_binding"

  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null
  # service_account_id - (required) is a type of string
  service_account_id = null
}
