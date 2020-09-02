module "google_firestore_index" {
  source = "./modules/google/r/google_firestore_index"

  # collection - (required) is a type of string
  collection = null
  # database - (optional) is a type of string
  database = null
  # project - (optional) is a type of string
  project = null
  # query_scope - (optional) is a type of string
  query_scope = null

  fields = [{
    array_config = null
    field_path   = null
    order        = null
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
