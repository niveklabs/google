module "google_logging_billing_account_exclusion" {
  source = "./modules/google/r/google_logging_billing_account_exclusion"

  billing_account = null
  description     = null
  disabled        = null
  filter          = null
  name            = null
}
