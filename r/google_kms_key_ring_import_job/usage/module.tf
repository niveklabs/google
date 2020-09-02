module "google_kms_key_ring_import_job" {
  source = "./modules/google/r/google_kms_key_ring_import_job"

  # import_job_id - (required) is a type of string
  import_job_id = null
  # import_method - (required) is a type of string
  import_method = null
  # key_ring - (required) is a type of string
  key_ring = null
  # protection_level - (required) is a type of string
  protection_level = null

  timeouts = [{
    create = null
    delete = null
  }]
}
