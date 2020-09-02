variable "labels" {
  description = "(optional) - User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: [a-z]([-a-z0-9]*[a-z0-9])?. Label values must be between 0 and 63 characters long and must conform to the regular expression ([a-z]([-a-z0-9]*[a-z0-9])?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be <= 128 bytes in size."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Name of the environment."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The location or Compute Engine region for the environment."
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
          cloud_sql_ipv4_cidr_block  = string
          enable_private_endpoint    = bool
          master_ipv4_cidr_block     = string
          web_server_ipv4_cidr_block = string
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

