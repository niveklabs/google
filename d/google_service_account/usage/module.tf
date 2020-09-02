module "google_service_account" {
  source = "./modules/google/d/google_service_account"

  # account_id - (required) is a type of string
  account_id = null
  # project - (optional) is a type of string
  project = null
}
