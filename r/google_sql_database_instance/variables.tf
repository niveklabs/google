variable "database_version" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "master_instance_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "replica_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      ca_certificate            = string
      client_certificate        = string
      client_key                = string
      connect_retry_interval    = number
      dump_file_path            = string
      failover_target           = bool
      master_heartbeat_period   = number
      password                  = string
      ssl_cipher                = string
      username                  = string
      verify_server_certificate = bool
    }
  ))
  default = []
}

variable "settings" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      activation_policy           = string
      authorized_gae_applications = list(string)
      availability_type           = string
      backup_configuration = list(object(
        {
          binary_log_enabled = bool
          enabled            = bool
          location           = string
          start_time         = string
        }
      ))
      crash_safe_replication = bool
      database_flags = list(object(
        {
          name  = string
          value = string
        }
      ))
      disk_autoresize = bool
      disk_size       = number
      disk_type       = string
      ip_configuration = list(object(
        {
          authorized_networks = set(object(
            {
              expiration_time = string
              name            = string
              value           = string
            }
          ))
          ipv4_enabled    = bool
          private_network = string
          require_ssl     = bool
        }
      ))
      location_preference = list(object(
        {
          follow_gae_application = string
          zone                   = string
        }
      ))
      maintenance_window = list(object(
        {
          day          = number
          hour         = number
          update_track = string
        }
      ))
      pricing_plan     = string
      replication_type = string
      tier             = string
      user_labels      = map(string)
      version          = number
    }
  ))
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      update = string
    }
  ))
  default = []
}

