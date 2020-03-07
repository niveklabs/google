module "google_firestore_index" {
  source = "./google/r/google_firestore_index"

  collection  = null
  database    = null
  project     = null
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
