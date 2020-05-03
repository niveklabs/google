module "google_bigtable_instance" {
  source = "./modules/google/r/google_bigtable_instance"

  display_name  = null
  instance_type = null
  name          = null
  project       = null

  cluster = [{
    cluster_id   = null
    num_nodes    = null
    storage_type = null
    zone         = null
  }]
}
