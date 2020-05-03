variable "additional_zones" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "cluster_ipv4_cidr" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "default_max_pods_per_node" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enable_binary_authorization" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enable_intranode_visibility" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enable_kubernetes_alpha" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enable_legacy_abac" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enable_tpu" {
  description = "(optional)"
  type        = bool
  default     = null
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

variable "logging_service" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "min_master_version" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "monitoring_service" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "network" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "node_locations" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "node_version" {
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

variable "remove_default_node_pool" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "resource_labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "subnetwork" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "addons_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      horizontal_pod_autoscaling = list(object(
        {
          disabled = bool
        }
      ))
      http_load_balancing = list(object(
        {
          disabled = bool
        }
      ))
      kubernetes_dashboard = list(object(
        {
          disabled = bool
        }
      ))
      network_policy_config = list(object(
        {
          disabled = bool
        }
      ))
    }
  ))
  default = []
}

variable "authenticator_groups_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      security_group = string
    }
  ))
  default = []
}

variable "cluster_autoscaling" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      auto_provisioning_defaults = list(object(
        {
          oauth_scopes    = list(string)
          service_account = string
        }
      ))
      enabled = bool
      resource_limits = list(object(
        {
          maximum       = number
          minimum       = number
          resource_type = string
        }
      ))
    }
  ))
  default = []
}

variable "ip_allocation_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cluster_ipv4_cidr_block       = string
      cluster_secondary_range_name  = string
      node_ipv4_cidr_block          = string
      services_ipv4_cidr_block      = string
      services_secondary_range_name = string
      subnetwork_name               = string
    }
  ))
  default = []
}

variable "maintenance_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      daily_maintenance_window = list(object(
        {
          duration   = string
          start_time = string
        }
      ))
      recurring_window = list(object(
        {
          end_time   = string
          recurrence = string
          start_time = string
        }
      ))
    }
  ))
  default = []
}

variable "master_auth" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      client_certificate = string
      client_certificate_config = list(object(
        {
          issue_client_certificate = bool
        }
      ))
      client_key             = string
      cluster_ca_certificate = string
      password               = string
      username               = string
    }
  ))
  default = []
}

variable "master_authorized_networks_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cidr_blocks = set(object(
        {
          cidr_block   = string
          display_name = string
        }
      ))
    }
  ))
  default = []
}

variable "network_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled  = bool
      provider = string
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

variable "node_pool" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      autoscaling = list(object(
        {
          max_node_count = number
          min_node_count = number
        }
      ))
      initial_node_count  = number
      instance_group_urls = list(string)
      management = list(object(
        {
          auto_repair  = bool
          auto_upgrade = bool
        }
      ))
      max_pods_per_node = number
      name              = string
      name_prefix       = string
      node_config = list(object(
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
      node_count = number
      upgrade_settings = list(object(
        {
          max_surge       = number
          max_unavailable = number
        }
      ))
      version = string
    }
  ))
  default = []
}

variable "pod_security_policy_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled = bool
    }
  ))
  default = []
}

variable "private_cluster_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enable_private_endpoint = bool
      enable_private_nodes    = bool
      master_ipv4_cidr_block  = string
      peering_name            = string
      private_endpoint        = string
      public_endpoint         = string
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

variable "vertical_pod_autoscaling" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled = bool
    }
  ))
  default = []
}

