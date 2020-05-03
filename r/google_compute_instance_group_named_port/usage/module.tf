module "google_compute_instance_group_named_port" {
  source = "./modules/google/r/google_compute_instance_group_named_port"

  group   = null
  name    = null
  port    = null
  project = null
  zone    = null

  timeouts = [{
    create = null
    delete = null
  }]
}
