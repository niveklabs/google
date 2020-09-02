variable "cluster" {
  description = "(required) - The cluster to create the node pool for. Cluster must be present in location provided for zonal clusters."
  type        = string
}

variable "initial_node_count" {
  description = "(optional) - The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource."
  type        = number
  default     = null
}

variable "location" {
  description = "(optional) - The location (region or zone) of the cluster."
  type        = string
  default     = null
}

variable "max_pods_per_node" {
  description = "(optional) - The maximum number of pods per node in this node pool. Note that this does not work on node pools which are \"route-based\" - that is, node pools belonging to clusters that do not have IP Aliasing enabled."
  type        = number
  default     = null
}

variable "name" {
  description = "(optional) - The name of the node pool. If left blank, Terraform will auto-generate a unique name."
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "(optional) - Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name."
  type        = string
  default     = null
}

variable "node_count" {
  description = "(optional) - The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling."
  type        = number
  default     = null
}

variable "node_locations" {
  description = "(optional) - The list of zones in which the node pool's nodes should be located. Nodes must be in the region of their regional cluster or in the same region as their cluster's zone for zonal clusters. If unspecified, the cluster-level node_locations will be used."
  type        = set(string)
  default     = null
}

variable "project" {
  description = "(optional) - The ID of the project in which to create the node pool. If blank, the provider-configured project will be used."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The region of the cluster"
  type        = string
  default     = null
}

variable "version" {
  description = "(optional) - The Kubernetes version for the nodes in this pool. Note that if this field and auto_upgrade are both specified, they will fight each other for what the node version should be, so setting both is highly discouraged. While a fuzzy version can be specified, it's recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source's version_prefix field to approximate fuzzy versions in a Terraform-compatible way."
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional) - The zone of the cluster"
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

variable "upgrade_settings" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_surge       = number
      max_unavailable = number
    }
  ))
  default = []
}

