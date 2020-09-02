module "google_billing_account_iam_binding" {
  source = "./modules/google/r/google_billing_account_iam_binding"

  # billing_account_id - (required) is a type of string
  billing_account_id = null
  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
