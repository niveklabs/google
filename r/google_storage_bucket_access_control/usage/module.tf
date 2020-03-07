module "google_storage_bucket_access_control" {
  source = "./google/r/google_storage_bucket_access_control"

  bucket = null
  entity = null
  role   = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
