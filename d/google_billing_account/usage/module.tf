module "google_billing_account" {
  source = "./modules/google/d/google_billing_account"

  # billing_account - (optional) is a type of string
  billing_account = null
  # display_name - (optional) is a type of string
  display_name = null
  # open - (optional) is a type of bool
  open = null
}
