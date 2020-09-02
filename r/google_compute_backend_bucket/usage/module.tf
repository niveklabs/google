module "google_compute_backend_bucket" {
  source = "./modules/google/r/google_compute_backend_bucket"

  # bucket_name - (required) is a type of string
  bucket_name = null
  # description - (optional) is a type of string
  description = null
  # enable_cdn - (optional) is a type of bool
  enable_cdn = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  cdn_policy = [{
    signed_url_cache_max_age_sec = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
