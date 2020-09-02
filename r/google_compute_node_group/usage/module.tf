module "google_compute_node_group" {
  source = "./modules/google/r/google_compute_node_group"

  # description - (optional) is a type of string
  description = null
  # name - (optional) is a type of string
  name = null
  # node_template - (required) is a type of string
  node_template = null
  # project - (optional) is a type of string
  project = null
  # size - (required) is a type of number
  size = null
  # zone - (optional) is a type of string
  zone = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
