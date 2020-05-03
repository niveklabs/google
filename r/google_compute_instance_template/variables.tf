variable "can_ip_forward" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enable_display" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "instance_description" {
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
  description = "(optional)"
  type        = string
  default     = null
}

variable "name_prefix" {
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

variable "tags" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "disk" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      auto_delete = bool
      boot        = bool
      device_name = string
      disk_encryption_key = list(object(
        {
          kms_key_self_link = string
        }
      ))
      disk_name    = string
      disk_size_gb = number
      disk_type    = string
      interface    = string
      labels       = map(string)
      mode         = string
      source       = string
      source_image = string
      type         = string
    }
  ))
}

variable "guest_accelerator" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      count = number
      type  = string
    }
  ))
  default = []
}

variable "network_interface" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
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
  default = []
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

