module "google_iap_brand" {
  source = "./modules/google/r/google_iap_brand"

  application_title = null
  project           = null
  support_email     = null

  timeouts = [{
    create = null
    delete = null
  }]
}
