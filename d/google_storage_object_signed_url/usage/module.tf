module "google_storage_object_signed_url" {
  source = "./modules/google/d/google_storage_object_signed_url"

  # bucket - (required) is a type of string
  bucket = null
  # content_md5 - (optional) is a type of string
  content_md5 = null
  # content_type - (optional) is a type of string
  content_type = null
  # credentials - (optional) is a type of string
  credentials = null
  # duration - (optional) is a type of string
  duration = null
  # extension_headers - (optional) is a type of map of string
  extension_headers = {}
  # http_method - (optional) is a type of string
  http_method = null
  # path - (required) is a type of string
  path = null
}
