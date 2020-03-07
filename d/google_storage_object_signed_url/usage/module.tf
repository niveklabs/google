module "google_storage_object_signed_url" {
  source = "./google/d/google_storage_object_signed_url"

  bucket            = null
  content_md5       = null
  content_type      = null
  credentials       = null
  duration          = null
  extension_headers = {}
  http_method       = null
  path              = null
}
