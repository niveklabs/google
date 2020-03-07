module "google_storage_notification" {
  source = "./google/r/google_storage_notification"

  bucket             = null
  custom_attributes  = {}
  event_types        = []
  object_name_prefix = null
  payload_format     = null
  topic              = null
}
