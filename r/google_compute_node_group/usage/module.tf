module "google_compute_node_group" {
  source = "./google/r/google_compute_node_group"

  description   = null
  name          = null
  node_template = null
  project       = null
  size          = null
  zone          = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
