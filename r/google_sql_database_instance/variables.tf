variable "database_version" {
  description = "(optional) - The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, POSTGRES_9_6,POSTGRES_11, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. Database Version Policies includes an up-to-date reference of supported versions."
  type        = string
  default     = null
}

variable "master_instance_name" {
  description = "(optional) - The name of the instance that will act as the master in the replication setup. Note, this requires the master to have binary_log_enabled set, as well as existing backups."
  type        = string
  default     = null
}

variable "name" {
  description = "(optional) - The name of the instance. If the name is left blank, Terraform will randomly generate one when the instance is first created. This is done because after a name is used, it cannot be reused for up to one week."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The region the instance will sit in. Note, Cloud SQL is not available in all regions - choose from one of the options listed here. A valid region must be provided to use this resource. If a region is not provided in the resource definition, the provider region will be used instead, but this will be an apply-time error for instances if the provider region is not supported with Cloud SQL. If you choose not to provide the region argument for this resource, make sure you understand this."
  type        = string
  default     = null
}

variable "root_password" {
  description = "(optional) - Initial root password. Required for MS SQL Server, ignored by MySQL and PostgreSQL."
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

