module "google_tpu_node" {
  source = "./modules/google/r/google_tpu_node"

  # accelerator_type - (required) is a type of string
  accelerator_type = null
  # cidr_block - (required) is a type of string
  cidr_block = null
  # description - (optional) is a type of string
  description = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # network - (optional) is a type of string
  network = null
  # project - (optional) is a type of string
  project = null
  # tensorflow_version - (required) is a type of string
  tensorflow_version = null
  # zone - (required) is a type of string
  zone = null

  scheduling_config = [{
    preemptible = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
