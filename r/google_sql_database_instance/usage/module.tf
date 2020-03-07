module "google_sql_database_instance" {
  source = "./google/r/google_sql_database_instance"

  database_version     = null
  master_instance_name = null
  name                 = null
  project              = null
  region               = null

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
      binary_log_enabled = null
      enabled            = null
      location           = null
      start_time         = null
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
