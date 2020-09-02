module "google_service_account_key" {
  source = "./modules/google/r/google_service_account_key"

  # key_algorithm - (optional) is a type of string
  key_algorithm = null
  # pgp_key - (optional) is a type of string
  pgp_key = null
  # private_key_type - (optional) is a type of string
  private_key_type = null
  # public_key_type - (optional) is a type of string
  public_key_type = null
  # service_account_id - (required) is a type of string
  service_account_id = null
}
