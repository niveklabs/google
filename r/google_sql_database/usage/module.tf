module "google_sql_database" {
  source = "./modules/google/r/google_sql_database"

  # charset - (optional) is a type of string
  charset = null
  # collation - (optional) is a type of string
  collation = null
  # instance - (required) is a type of string
  instance = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
