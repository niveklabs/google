module "google_kms_key_ring" {
  source = "./modules/google/r/google_kms_key_ring"

  # location - (required) is a type of string
  location = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
  }]
}
