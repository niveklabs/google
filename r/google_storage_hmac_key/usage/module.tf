module "google_storage_hmac_key" {
  source = "./modules/google/r/google_storage_hmac_key"

  project               = null
  service_account_email = null
  state                 = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
