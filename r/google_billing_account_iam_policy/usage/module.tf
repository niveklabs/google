module "google_billing_account_iam_policy" {
  source = "./modules/google/r/google_billing_account_iam_policy"

  # billing_account_id - (required) is a type of string
  billing_account_id = null
  # policy_data - (required) is a type of string
  policy_data = null
}
