module "google_bigtable_table" {
  source = "./modules/google/r/google_bigtable_table"

  instance_name = null
  name          = null
  project       = null
  split_keys    = []

  column_family = [{
    family = null
  }]
}
