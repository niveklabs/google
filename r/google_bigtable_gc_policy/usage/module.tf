module "google_bigtable_gc_policy" {
  source = "./modules/google/r/google_bigtable_gc_policy"

  column_family = null
  instance_name = null
  mode          = null
  project       = null
  table         = null

  max_age = [{
    days = null
  }]

  max_version = [{
    number = null
  }]
}
