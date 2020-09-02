module "google_compute_target_instance" {
  source = "./modules/google/r/google_compute_target_instance"

  # description - (optional) is a type of string
  description = null
  # instance - (required) is a type of string
  instance = null
  # name - (required) is a type of string
  name = null
  # nat_policy - (optional) is a type of string
  nat_policy = null
  # project - (optional) is a type of string
  project = null
  # zone - (optional) is a type of string
  zone = null

  timeouts = [{
    create = null
    delete = null
  }]
}
