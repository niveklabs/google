module "google_service_account_key" {
  source = "./modules/google/d/google_service_account_key"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # public_key_type - (optional) is a type of string
  public_key_type = null
}
