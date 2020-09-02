module "google_storage_notification" {
  source = "./modules/google/r/google_storage_notification"

  # bucket - (required) is a type of string
  bucket = null
  # custom_attributes - (optional) is a type of map of string
  custom_attributes = {}
  # event_types - (optional) is a type of set of string
  event_types = []
  # object_name_prefix - (optional) is a type of string
  object_name_prefix = null
  # payload_format - (required) is a type of string
  payload_format = null
  # topic - (required) is a type of string
  topic = null
}
