terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_sql_database_instance" "this" {
  database_version     = var.database_version
  master_instance_name = var.master_instance_name
  name                 = var.name
  project              = var.project
  region               = var.region

  dynamic "replica_configuration" {
    for_each = var.replica_configuration
    content {
      ca_certificate            = replica_configuration.value["ca_certificate"]
      client_certificate        = replica_configuration.value["client_certificate"]
      client_key                = replica_configuration.value["client_key"]
      connect_retry_interval    = replica_configuration.value["connect_retry_interval"]
      dump_file_path            = replica_configuration.value["dump_file_path"]
      failover_target           = replica_configuration.value["failover_target"]
      master_heartbeat_period   = replica_configuration.value["master_heartbeat_period"]
      password                  = replica_configuration.value["password"]
      ssl_cipher                = replica_configuration.value["ssl_cipher"]
      username                  = replica_configuration.value["username"]
      verify_server_certificate = replica_configuration.value["verify_server_certificate"]
    }
  }

  dynamic "settings" {
    for_each = var.settings
    content {
      activation_policy           = settings.value["activation_policy"]
      authorized_gae_applications = settings.value["authorized_gae_applications"]
      availability_type           = settings.value["availability_type"]
      crash_safe_replication      = settings.value["crash_safe_replication"]
      disk_autoresize             = settings.value["disk_autoresize"]
      disk_size                   = settings.value["disk_size"]
      disk_type                   = settings.value["disk_type"]
      pricing_plan                = settings.value["pricing_plan"]
      replication_type            = settings.value["replication_type"]
      tier                        = settings.value["tier"]
      user_labels                 = settings.value["user_labels"]

      dynamic "backup_configuration" {
        for_each = settings.value.backup_configuration
        content {
          binary_log_enabled = backup_configuration.value["binary_log_enabled"]
          enabled            = backup_configuration.value["enabled"]
          location           = backup_configuration.value["location"]
          start_time         = backup_configuration.value["start_time"]
        }
      }

      dynamic "database_flags" {
        for_each = settings.value.database_flags
        content {
          name  = database_flags.value["name"]
          value = database_flags.value["value"]
        }
      }

      dynamic "ip_configuration" {
        for_each = settings.value.ip_configuration
        content {
          ipv4_enabled    = ip_configuration.value["ipv4_enabled"]
          private_network = ip_configuration.value["private_network"]
          require_ssl     = ip_configuration.value["require_ssl"]

          dynamic "authorized_networks" {
            for_each = ip_configuration.value.authorized_networks
            content {
              expiration_time = authorized_networks.value["expiration_time"]
              name            = authorized_networks.value["name"]
              value           = authorized_networks.value["value"]
            }
          }

        }
      }

      dynamic "location_preference" {
        for_each = settings.value.location_preference
        content {
          follow_gae_application = location_preference.value["follow_gae_application"]
          zone                   = location_preference.value["zone"]
        }
      }

      dynamic "maintenance_window" {
        for_each = settings.value.maintenance_window
        content {
          day          = maintenance_window.value["day"]
          hour         = maintenance_window.value["hour"]
          update_track = maintenance_window.value["update_track"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

