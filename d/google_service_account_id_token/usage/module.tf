module "google_service_account_id_token" {
  source = "./modules/google/d/google_service_account_id_token"

  # delegates - (optional) is a type of set of string
  delegates = []
  # include_email - (optional) is a type of bool
  include_email = null
  # target_audience - (required) is a type of string
  target_audience = null
  # target_service_account - (optional) is a type of string
  target_service_account = null
}
