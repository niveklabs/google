module "google_sql_user" {
  source = "./modules/google/r/google_sql_user"

  # host - (optional) is a type of string
  host = null
  # instance - (required) is a type of string
  instance = null
  # name - (required) is a type of string
  name = null
  # password - (optional) is a type of string
  password = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
