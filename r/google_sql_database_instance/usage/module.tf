module "google_sql_database_instance" {
  source = "./modules/google/r/google_sql_database_instance"

  # database_version - (optional) is a type of string
  database_version = null
  # master_instance_name - (optional) is a type of string
  master_instance_name = null
  # name - (optional) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # root_password - (optional) is a type of string
  root_password = null

  replica_configuration = [{
    ca_certificate            = null
    client_certificate        = null
    client_key                = null
    connect_retry_interval    = null
    dump_file_path            = null
    failover_target           = null
    master_heartbeat_period   = null
    password                  = null
    ssl_cipher                = null
    username                  = null
    verify_server_certificate = null
  }]

  settings = [{
    activation_policy           = null
    authorized_gae_applications = []
    availability_type           = null
    backup_configuration = [{
      binary_log_enabled             = null
      enabled                        = null
      location                       = null
      point_in_time_recovery_enabled = null
      start_time                     = null
    }]
    crash_safe_replication = null
    database_flags = [{
      name  = null
      value = null
    }]
    disk_autoresize = null
    disk_size       = null
    disk_type       = null
    ip_configuration = [{
      authorized_networks = [{
        expiration_time = null
        name            = null
        value           = null
      }]
      ipv4_enabled    = null
      private_network = null
      require_ssl     = null
    }]
    location_preference = [{
      follow_gae_application = null
      zone                   = null
    }]
    maintenance_window = [{
      day          = null
      hour         = null
      update_track = null
    }]
    pricing_plan     = null
    replication_type = null
    tier             = null
    user_labels      = {}
    version          = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
