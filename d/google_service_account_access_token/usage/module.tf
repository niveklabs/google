module "google_service_account_access_token" {
  source = "./google/d/google_service_account_access_token"

  delegates              = []
  lifetime               = null
  scopes                 = []
  target_service_account = null
}
