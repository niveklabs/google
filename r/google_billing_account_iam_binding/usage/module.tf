module "google_billing_account_iam_binding" {
  source = "./modules/google/r/google_billing_account_iam_binding"

  billing_account_id = null
  members            = []
  role               = null
}
