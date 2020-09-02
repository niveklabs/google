module "google_compute_ssl_policy" {
  source = "./modules/google/r/google_compute_ssl_policy"

  # custom_features - (optional) is a type of set of string
  custom_features = []
  # description - (optional) is a type of string
  description = null
  # min_tls_version - (optional) is a type of string
  min_tls_version = null
  # name - (required) is a type of string
  name = null
  # profile - (optional) is a type of string
  profile = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
