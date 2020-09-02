module "google_iap_brand" {
  source = "./modules/google/r/google_iap_brand"

  # application_title - (required) is a type of string
  application_title = null
  # project - (optional) is a type of string
  project = null
  # support_email - (required) is a type of string
  support_email = null

  timeouts = [{
    create = null
    delete = null
  }]
}
