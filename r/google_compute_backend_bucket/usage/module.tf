module "google_compute_backend_bucket" {
  source = "./modules/google/r/google_compute_backend_bucket"

  bucket_name = null
  description = null
  enable_cdn  = null
  name        = null
  project     = null

  cdn_policy = [{
    signed_url_cache_max_age_sec = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
