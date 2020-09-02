module "google_bigquery_dataset" {
  source = "./modules/google/r/google_bigquery_dataset"

  # dataset_id - (required) is a type of string
  dataset_id = null
  # default_partition_expiration_ms - (optional) is a type of number
  default_partition_expiration_ms = null
  # default_table_expiration_ms - (optional) is a type of number
  default_table_expiration_ms = null
  # delete_contents_on_destroy - (optional) is a type of bool
  delete_contents_on_destroy = null
  # description - (optional) is a type of string
  description = null
  # friendly_name - (optional) is a type of string
  friendly_name = null
  # labels - (optional) is a type of map of string
  labels = {}
  # location - (optional) is a type of string
  location = null
  # project - (optional) is a type of string
  project = null

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
