module "google_bigtable_instance" {
  source = "./modules/google/r/google_bigtable_instance"

  # deletion_protection - (optional) is a type of bool
  deletion_protection = null
  # display_name - (optional) is a type of string
  display_name = null
  # instance_type - (optional) is a type of string
  instance_type = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  cluster = [{
    cluster_id   = null
    num_nodes    = null
    storage_type = null
    zone         = null
  }]
}
