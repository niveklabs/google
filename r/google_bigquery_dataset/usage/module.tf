module "google_bigquery_dataset" {
  source = "./google/r/google_bigquery_dataset"

  dataset_id                      = null
  default_partition_expiration_ms = null
  default_table_expiration_ms     = null
  delete_contents_on_destroy      = null
  description                     = null
  friendly_name                   = null
  labels                          = {}
  location                        = null
  project                         = null

  access = [{
    domain         = null
    group_by_email = null
    role           = null
    special_group  = null
    user_by_email  = null
    view = [{
      dataset_id = null
      project_id = null
      table_id   = null
    }]
  }]

  default_encryption_configuration = [{
    kms_key_name = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
