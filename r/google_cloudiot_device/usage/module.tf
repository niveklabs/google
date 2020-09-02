module "google_cloudiot_device" {
  source = "./modules/google/r/google_cloudiot_device"

  # blocked - (optional) is a type of bool
  blocked = null
  # log_level - (optional) is a type of string
  log_level = null
  # metadata - (optional) is a type of map of string
  metadata = {}
  # name - (required) is a type of string
  name = null
  # registry - (required) is a type of string
  registry = null

  credentials = [{
    expiration_time = null
    public_key = [{
      format = null
      key    = null
    }]
  }]

  gateway_config = [{
    gateway_auth_method        = null
    gateway_type               = null
    last_accessed_gateway_id   = null
    last_accessed_gateway_time = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
