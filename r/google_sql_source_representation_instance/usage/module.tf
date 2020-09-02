module "google_sql_source_representation_instance" {
  source = "./modules/google/r/google_sql_source_representation_instance"

  # database_version - (required) is a type of string
  database_version = null
  # host - (required) is a type of string
  host = null
  # name - (required) is a type of string
  name = null
  # port - (optional) is a type of number
  port = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null

  timeouts = [{
    create = null
    delete = null
  }]
}
