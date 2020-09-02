module "google_iap_client" {
  source = "./modules/google/r/google_iap_client"

  # brand - (required) is a type of string
  brand = null
  # display_name - (required) is a type of string
  display_name = null

  timeouts = [{
    create = null
    delete = null
  }]
}
