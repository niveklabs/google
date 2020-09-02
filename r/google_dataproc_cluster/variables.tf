variable "labels" {
  description = "(optional) - The list of labels (key/value pairs) to be applied to instances in the cluster. GCP generates some itself including goog-dataproc-cluster-name which is the name of the cluster."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - The name of the cluster, unique within the project and zone."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the cluster will exist. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The region in which the cluster and associated nodes will be created in. Defaults to global."
  type        = string
  default     = null
}

variable "cluster_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      autoscaling_config = list(object(
        {
          policy_uri = string
        }
      ))
      bucket = string
      encryption_config = list(object(
        {
          kms_key_name = string
        }
      ))
      gce_cluster_config = list(object(
        {
          internal_ip_only       = bool
          metadata               = map(string)
          network                = string
          service_account        = string
          service_account_scopes = set(string)
          subnetwork             = string
          tags                   = set(string)
          zone                   = string
        }
      ))
      initialization_action = list(object(
        {
          script      = string
          timeout_sec = number
        }
      ))
      master_config = list(object(
        {
          accelerators = set(object(
            {
              accelerator_count = number
              accelerator_type  = string
            }
          ))
          disk_config = list(object(
            {
              boot_disk_size_gb = number
              boot_disk_type    = string
              num_local_ssds    = number
            }
          ))
          image_uri        = string
          instance_names   = list(string)
          machine_type     = string
          min_cpu_platform = string
          num_instances    = number
        }
      ))
      preemptible_worker_config = list(object(
        {
          disk_config = list(object(
            {
              boot_disk_size_gb = number
              boot_disk_type    = string
              num_local_ssds    = number
            }
          ))
          instance_names = list(string)
          num_instances  = number
        }
      ))
      security_config = list(object(
        {
          kerberos_config = list(object(
            {
              cross_realm_trust_admin_server        = string
              cross_realm_trust_kdc                 = string
              cross_realm_trust_realm               = string
              cross_realm_trust_shared_password_uri = string
              enable_kerberos                       = bool
              kdc_db_key_uri                        = string
              key_password_uri                      = string
              keystore_password_uri                 = string
              keystore_uri                          = string
              kms_key_uri                           = string
              realm                                 = string
              root_principal_password_uri           = string
              tgt_lifetime_hours                    = number
              truststore_password_uri               = string
              truststore_uri                        = string
            }
          ))
        }
      ))
      software_config = list(object(
        {
          image_version       = string
          optional_components = set(string)
          override_properties = map(string)
          properties          = map(string)
        }
      ))
      staging_bucket = string
      worker_config = list(object(
        {
          accelerators = set(object(
            {
              accelerator_count = number
              accelerator_type  = string
            }
          ))
          disk_config = list(object(
            {
              boot_disk_size_gb = number
              boot_disk_type    = string
              num_local_ssds    = number
            }
          ))
          image_uri        = string
          instance_names   = list(string)
          machine_type     = string
          min_cpu_platform = string
          num_instances    = number
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

