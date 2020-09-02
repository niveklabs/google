module "google_service_account_access_token" {
  source = "./modules/google/d/google_service_account_access_token"

  # delegates - (optional) is a type of set of string
  delegates = []
  # lifetime - (optional) is a type of string
  lifetime = null
  # scopes - (required) is a type of set of string
  scopes = []
  # target_service_account - (required) is a type of string
  target_service_account = null
}
