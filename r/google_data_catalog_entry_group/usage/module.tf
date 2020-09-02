module "google_data_catalog_entry_group" {
  source = "./modules/google/r/google_data_catalog_entry_group"

  # description - (optional) is a type of string
  description = null
  # display_name - (optional) is a type of string
  display_name = null
  # entry_group_id - (required) is a type of string
  entry_group_id = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
