module "google_compute_node_template" {
  source = "./google/r/google_compute_node_template"

  description          = null
  name                 = null
  node_affinity_labels = {}
  node_type            = null
  project              = null
  region               = null

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
