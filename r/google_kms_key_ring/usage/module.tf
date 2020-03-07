module "google_kms_key_ring" {
  source = "./google/r/google_kms_key_ring"

  location = null
  name     = null
  project  = null

  timeouts = [{
    create = null
    delete = null
  }]
}
