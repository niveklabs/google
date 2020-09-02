module "google_bigtable_gc_policy" {
  source = "./modules/google/r/google_bigtable_gc_policy"

  # column_family - (required) is a type of string
  column_family = null
  # instance_name - (required) is a type of string
  instance_name = null
  # mode - (optional) is a type of string
  mode = null
  # project - (optional) is a type of string
  project = null
  # table - (required) is a type of string
  table = null

  max_age = [{
    days = null
  }]

  max_version = [{
    number = null
  }]
}
