module "google_logging_billing_account_exclusion" {
  source = "./modules/google/r/google_logging_billing_account_exclusion"

  # billing_account - (required) is a type of string
  billing_account = null
  # description - (optional) is a type of string
  description = null
  # disabled - (optional) is a type of bool
  disabled = null
  # filter - (required) is a type of string
  filter = null
  # name - (required) is a type of string
  name = null
}
