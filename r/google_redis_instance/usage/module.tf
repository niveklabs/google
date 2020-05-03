module "google_redis_instance" {
  source = "./modules/google/r/google_redis_instance"

  alternative_location_id = null
  authorized_network      = null
  display_name            = null
  labels                  = {}
  location_id             = null
  memory_size_gb          = null
  name                    = null
  project                 = null
  redis_configs           = {}
  redis_version           = null
  region                  = null
  reserved_ip_range       = null
  tier                    = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
