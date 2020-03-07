variable "labels" {
  description = "(optional)"
  type        = map(string)
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

variable "region" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      airflow_uri    = string
      dag_gcs_prefix = string
      gke_cluster    = string
      node_config = list(object(
        {
          disk_size_gb = number
          ip_allocation_policy = list(object(
            {
              cluster_ipv4_cidr_block       = string
              cluster_secondary_range_name  = string
              services_ipv4_cidr_block      = string
              services_secondary_range_name = string
              use_ip_aliases                = bool
            }
          ))
          machine_type    = string
          network         = string
          oauth_scopes    = set(string)
          service_account = string
          subnetwork      = string
          tags            = set(string)
          zone            = string
        }
      ))
      node_count = number
      private_environment_config = list(object(
        {
          enable_private_endpoint = bool
          master_ipv4_cidr_block  = string
        }
      ))
      software_config = list(object(
        {
          airflow_config_overrides = map(string)
          env_variables            = map(string)
          image_version            = string
          pypi_packages            = map(string)
          python_version           = string
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

