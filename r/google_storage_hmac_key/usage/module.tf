module "google_storage_hmac_key" {
  source = "./modules/google/r/google_storage_hmac_key"

  # project - (optional) is a type of string
  project = null
  # service_account_email - (required) is a type of string
  service_account_email = null
  # state - (optional) is a type of string
  state = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
