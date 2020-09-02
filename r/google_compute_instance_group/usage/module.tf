module "google_compute_instance_group" {
  source = "./modules/google/r/google_compute_instance_group"

  # description - (optional) is a type of string
  description = null
  # instances - (optional) is a type of set of string
  instances = []
  # name - (required) is a type of string
  name = null
  # network - (optional) is a type of string
  network = null
  # project - (optional) is a type of string
  project = null
  # zone - (optional) is a type of string
  zone = null

  named_port = [{
    name = null
    port = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
