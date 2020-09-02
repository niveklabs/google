variable "additional_zones" {
  description = "(optional) - Additional_zones has been removed in favor of node_locations."
  type        = set(string)
  default     = null
}

variable "cluster_ipv4_cidr" {
  description = "(optional) - The IP address range of the Kubernetes pods in this cluster in CIDR notation (e.g. 10.96.0.0/14). Leave blank to have one automatically chosen or specify a /14 block in 10.0.0.0/8. This field will only work for routes-based clusters, where ip_allocation_policy is not defined."
  type        = string
  default     = null
}

variable "default_max_pods_per_node" {
  description = "(optional) - The default maximum number of pods per node in this cluster. This doesn't work on \"routes-based\" clusters, clusters that don't have IP Aliasing enabled."
  type        = number
  default     = null
}

variable "description" {
  description = "(optional) -  Description of the cluster."
  type        = string
  default     = null
}

variable "enable_binary_authorization" {
  description = "(optional) - Enable Binary Authorization for this cluster. If enabled, all container images will be validated by Google Binary Authorization."
  type        = bool
  default     = null
}

variable "enable_intranode_visibility" {
  description = "(optional) - Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network."
  type        = bool
  default     = null
}

variable "enable_kubernetes_alpha" {
  description = "(optional) - Whether to enable Kubernetes Alpha features for this cluster. Note that when this option is enabled, the cluster cannot be upgraded and will be automatically deleted after 30 days."
  type        = bool
  default     = null
}

variable "enable_legacy_abac" {
  description = "(optional) - Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM. Defaults to false."
  type        = bool
  default     = null
}

variable "enable_shielded_nodes" {
  description = "(optional) - Enable Shielded Nodes features on all nodes in this cluster. Defaults to false."
  type        = bool
  default     = null
}

variable "enable_tpu" {
  description = "(optional) - Whether to enable Cloud TPU resources in this cluster."
  type        = bool
  default     = null
}

variable "initial_node_count" {
  description = "(optional) - The number of nodes to create in this cluster's default node pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Must be set if node_pool is not set. If you're using google_container_node_pool objects with no default node pool, you'll need to set this to a value of at least 1, alongside setting remove_default_node_pool to true."
  type        = number
  default     = null
}

variable "location" {
  description = "(optional) - The location (region or zone) in which the cluster master will be created, as well as the default node location. If you specify a zone (such as us-central1-a), the cluster will be a zonal cluster with a single cluster master. If you specify a region (such as us-west1), the cluster will be a regional cluster with multiple masters spread across zones in the region, and with default node locations in those zones as well."
  type        = string
  default     = null
}

variable "logging_service" {
  description = "(optional) - The logging service that the cluster should write logs to. Available options include logging.googleapis.com(Legacy Stackdriver), logging.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Logging), and none. Defaults to logging.googleapis.com/kubernetes."
  type        = string
  default     = null
}

variable "min_master_version" {
  description = "(optional) - The minimum version of the master. GKE will auto-update the master to new versions, so this does not guarantee the current master version--use the read-only master_version field to obtain that. If unset, the cluster's version will be set by GKE to the version of the most recent official release (which is not necessarily the latest version)."
  type        = string
  default     = null
}

variable "monitoring_service" {
  description = "(optional) - The monitoring service that the cluster should write metrics to. Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API. VM metrics will be collected by Google Compute Engine regardless of this setting Available options include monitoring.googleapis.com(Legacy Stackdriver), monitoring.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Monitoring), and none. Defaults to monitoring.googleapis.com/kubernetes."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - The name of the cluster, unique within the project and location."
  type        = string
}

variable "network" {
  description = "(optional) - The name or self_link of the Google Compute Engine network to which the cluster is connected. For Shared VPC, set this to the self link of the shared network."
  type        = string
  default     = null
}

variable "node_locations" {
  description = "(optional) - The list of zones in which the cluster's nodes are located. Nodes must be in the region of their regional cluster or in the same region as their cluster's zone for zonal clusters. If this is specified for a zonal cluster, omit the cluster's zone."
  type        = set(string)
  default     = null
}

variable "node_version" {
  description = "(optional) - The Kubernetes version on the nodes. Must either be unset or set to the same value as min_master_version on create. Defaults to the default version set by GKE which is not necessarily the latest version. This only affects nodes in the default node pool. While a fuzzy version can be specified, it's recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source's version_prefix field to approximate fuzzy versions in a Terraform-compatible way. To update nodes in other node pools, use the version attribute on the node pool."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The region in which the cluster master will be created. Zone and region have been removed in favor of location."
  type        = string
  default     = null
}

variable "remove_default_node_pool" {
  description = "(optional) - If true, deletes the default node pool upon cluster creation. If you're using google_container_node_pool resources with no default node pool, this should be set to true, alongside setting initial_node_count to at least 1."
  type        = bool
  default     = null
}

variable "resource_labels" {
  description = "(optional) - The GCE resource labels (a map of key/value pairs) to be applied to the cluster."
  type        = map(string)
  default     = null
}

variable "subnetwork" {
  description = "(optional) - The name or self_link of the Google Compute Engine subnetwork in which the cluster's instances are launched."
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional) - The zone in which the cluster master will be created. Zone and region have been removed in favor of location."
  type        = string
  default     = null
}

variable "addons_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cloudrun_config = list(object(
        {
          disabled = bool
        }
      ))
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
      node_count     = number
      node_locations = set(string)
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

variable "resource_usage_export_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      bigquery_destination = list(object(
        {
          dataset_id = string
        }
      ))
      enable_network_egress_metering       = bool
      enable_resource_consumption_metering = bool
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
      read   = string
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

variable "workload_identity_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      identity_namespace = string
    }
  ))
  default = []
}

