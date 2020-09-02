module "google_redis_instance" {
  source = "./modules/google/r/google_redis_instance"

  # alternative_location_id - (optional) is a type of string
  alternative_location_id = null
  # authorized_network - (optional) is a type of string
  authorized_network = null
  # connect_mode - (optional) is a type of string
  connect_mode = null
  # display_name - (optional) is a type of string
  display_name = null
  # labels - (optional) is a type of map of string
  labels = {}
  # location_id - (optional) is a type of string
  location_id = null
  # memory_size_gb - (required) is a type of number
  memory_size_gb = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # redis_configs - (optional) is a type of map of string
  redis_configs = {}
  # redis_version - (optional) is a type of string
  redis_version = null
  # region - (optional) is a type of string
  region = null
  # reserved_ip_range - (optional) is a type of string
  reserved_ip_range = null
  # tier - (optional) is a type of string
  tier = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
