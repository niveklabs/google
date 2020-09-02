module "google_compute_node_template" {
  source = "./modules/google/r/google_compute_node_template"

  # description - (optional) is a type of string
  description = null
  # name - (optional) is a type of string
  name = null
  # node_affinity_labels - (optional) is a type of map of string
  node_affinity_labels = {}
  # node_type - (optional) is a type of string
  node_type = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null

  node_type_flexibility = [{
    cpus      = null
    local_ssd = null
    memory    = null
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
