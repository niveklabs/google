module "google_billing_account_iam_policy" {
  source = "./modules/google/r/google_billing_account_iam_policy"

  billing_account_id = null
  policy_data        = null
}
