module "google_compute_target_instance" {
  source = "./google/r/google_compute_target_instance"

  description = null
  instance    = null
  name        = null
  nat_policy  = null
  project     = null
  zone        = null

  timeouts = [{
    create = null
    delete = null
  }]
}
