module "google_compute_instance_group" {
  source = "./modules/google/r/google_compute_instance_group"

  description = null
  instances   = []
  name        = null
  network     = null
  project     = null
  zone        = null

  named_port = [{
    name = null
    port = null
  }]
}
