module "google_billing_account" {
  source = "./modules/google/d/google_billing_account"

  billing_account = null
  display_name    = null
  open            = null
}
