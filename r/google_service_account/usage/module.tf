module "google_service_account" {
  source = "./modules/google/r/google_service_account"

  # account_id - (required) is a type of string
  account_id = null
  # description - (optional) is a type of string
  description = null
  # display_name - (optional) is a type of string
  display_name = null
  # project - (optional) is a type of string
  project = null
}
