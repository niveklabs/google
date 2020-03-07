variable "allow_stopping_for_update" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "can_ip_forward" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "deletion_protection" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "desired_status" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enable_display" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "guest_accelerator" {
  description = "(optional)"
  type = list(object(
    {
      count = number
      type  = string
    }
  ))
  default = null
}

variable "hostname" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "machine_type" {
  description = "(required)"
  type        = string
}

variable "metadata" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "metadata_startup_script" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "min_cpu_platform" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "zone" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "attached_disk" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      device_name                = string
      disk_encryption_key_raw    = string
      disk_encryption_key_sha256 = string
      kms_key_self_link          = string
      mode                       = string
      source                     = string
    }
  ))
  default = []
}

variable "boot_disk" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      auto_delete                = bool
      device_name                = string
      disk_encryption_key_raw    = string
      disk_encryption_key_sha256 = string
      initialize_params = list(object(
        {
          image  = string
          labels = map(string)
          size   = number
          type   = string
        }
      ))
      kms_key_self_link = string
      mode              = string
      source            = string
    }
  ))
}

variable "network_interface" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      access_config = list(object(
        {
          nat_ip                 = string
          network_tier           = string
          public_ptr_domain_name = string
        }
      ))
      alias_ip_range = list(object(
        {
          ip_cidr_range         = string
          subnetwork_range_name = string
        }
      ))
      name               = string
      network            = string
      network_ip         = string
      subnetwork         = string
      subnetwork_project = string
    }
  ))
}

variable "scheduling" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      automatic_restart = bool
      node_affinities = set(object(
        {
          key      = string
          operator = string
          values   = set(string)
        }
      ))
      on_host_maintenance = string
      preemptible         = bool
    }
  ))
  default = []
}

variable "scratch_disk" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      interface = string
    }
  ))
  default = []
}

variable "service_account" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      email  = string
      scopes = set(string)
    }
  ))
  default = []
}

variable "shielded_instance_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enable_integrity_monitoring = bool
      enable_secure_boot          = bool
      enable_vtpm                 = bool
    }
  ))
  default = []
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

