module "google_iap_client" {
  source = "./modules/google/r/google_iap_client"

  brand        = null
  display_name = null

  timeouts = [{
    create = null
    delete = null
  }]
}
