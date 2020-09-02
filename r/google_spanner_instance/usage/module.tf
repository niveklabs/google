module "google_spanner_instance" {
  source = "./modules/google/r/google_spanner_instance"

  # config - (required) is a type of string
  config = null
  # display_name - (required) is a type of string
  display_name = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
  # num_nodes - (optional) is a type of number
  num_nodes = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
