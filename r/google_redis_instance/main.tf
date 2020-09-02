terraform {
  required_providers {
    google = ">= 3.20.0"
  }
}

resource "google_redis_instance" "this" {
  alternative_location_id = var.alternative_location_id
  authorized_network      = var.authorized_network
  connect_mode            = var.connect_mode
  display_name            = var.display_name
  labels                  = var.labels
  location_id             = var.location_id
  memory_size_gb          = var.memory_size_gb
  name                    = var.name
  project                 = var.project
  redis_configs           = var.redis_configs
  redis_version           = var.redis_version
  region                  = var.region
  reserved_ip_range       = var.reserved_ip_range
  tier                    = var.tier

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

