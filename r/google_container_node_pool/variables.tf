variable "cluster" {
  description = "(required)"
  type        = string
}

variable "initial_node_count" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "location" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "max_pods_per_node" {
  description = "(optional)"
  type        = number
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

variable "node_count" {
  description = "(optional)"
  type        = number
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

variable "version" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "autoscaling" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_node_count = number
      min_node_count = number
    }
  ))
  default = []
}

variable "management" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      auto_repair  = bool
      auto_upgrade = bool
    }
  ))
  default = []
}

variable "node_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      disk_size_gb = number
      disk_type    = string
      guest_accelerator = list(object(
        {
          count = number
          type  = string
        }
      ))
      image_type       = string
      labels           = map(string)
      local_ssd_count  = number
      machine_type     = string
      metadata         = map(string)
      min_cpu_platform = string
      oauth_scopes     = set(string)
      preemptible      = bool
      sandbox_config = list(object(
        {
          sandbox_type = string
        }
      ))
      service_account = string
      shielded_instance_config = list(object(
        {
          enable_integrity_monitoring = bool
          enable_secure_boot          = bool
        }
      ))
      tags = list(string)
      taint = list(object(
        {
          effect = string
          key    = string
          value  = string
        }
      ))
      workload_metadata_config = list(object(
        {
          node_metadata = string
        }
      ))
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

