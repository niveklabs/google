module "google_bigtable_table" {
  source = "./modules/google/r/google_bigtable_table"

  # instance_name - (required) is a type of string
  instance_name = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # split_keys - (optional) is a type of list of string
  split_keys = []

  column_family = [{
    family = null
  }]
}
