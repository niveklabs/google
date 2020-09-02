module "google_service_account_iam_policy" {
  source = "./modules/google/r/google_service_account_iam_policy"

  # policy_data - (required) is a type of string
  policy_data = null
  # service_account_id - (required) is a type of string
  service_account_id = null
}
