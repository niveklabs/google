variable "allow_stopping_for_update" {
  description = "(optional) - If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail."
  type        = bool
  default     = null
}

variable "attached_disk" {
  description = "(optional) - List of disks attached to the instance"
  type = list(object(
    {
      device_name                = string
      disk_encryption_key_raw    = string
      disk_encryption_key_sha256 = string
      kms_key_self_link          = string
      mode                       = string
      source                     = string
    }
  ))
  default = null
}

variable "can_ip_forward" {
  description = "(optional) - Whether sending and receiving of packets with non-matching source or destination IPs is allowed."
  type        = bool
  default     = null
}

variable "deletion_protection" {
  description = "(optional) - Whether deletion protection is enabled on this instance."
  type        = bool
  default     = null
}

variable "description" {
  description = "(optional) - A brief description of the resource."
  type        = string
  default     = null
}

variable "desired_status" {
  description = "(optional) - Desired status of the instance. Either \"RUNNING\" or \"TERMINATED\"."
  type        = string
  default     = null
}

variable "enable_display" {
  description = "(optional) - Whether the instance has virtual displays enabled."
  type        = bool
  default     = null
}

variable "guest_accelerator" {
  description = "(optional) - List of the type and count of accelerator cards attached to the instance."
  type = list(object(
    {
      count = number
      type  = string
    }
  ))
  default = null
}

variable "hostname" {
  description = "(optional) - A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression [a-z]([-a-z0-9]*[a-z0-9]), concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - A set of key/value label pairs assigned to the instance."
  type        = map(string)
  default     = null
}

variable "machine_type" {
  description = "(optional) - The machine type to create."
  type        = string
  default     = null
}

variable "metadata" {
  description = "(optional) - Metadata key/value pairs made available within the instance."
  type        = map(string)
  default     = null
}

variable "metadata_startup_script" {
  description = "(optional) - Metadata startup scripts made available within the instance."
  type        = string
  default     = null
}

variable "min_cpu_platform" {
  description = "(optional) - The minimum CPU platform specified for the VM instance."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - The name of the instance. One of name or self_link must be provided."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used."
  type        = string
  default     = null
}

variable "resource_policies" {
  description = "(optional) - A list of short names or self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported."
  type        = list(string)
  default     = null
}

variable "scratch_disk" {
  description = "(optional) - The scratch disks attached to the instance."
  type = list(object(
    {
      interface = string
    }
  ))
  default = null
}

variable "service_account" {
  description = "(optional) - The service account to attach to the instance."
  type = list(object(
    {
      email  = string
      scopes = set(string)
    }
  ))
  default = null
}

variable "source_instance_template" {
  description = "(required) - Name or self link of an instance template to create the instance based on."
  type        = string
}

variable "tags" {
  description = "(optional) - The list of tags attached to the instance."
  type        = set(string)
  default     = null
}

variable "zone" {
  description = "(optional) - The zone of the instance. If self_link is provided, this value is ignored. If neither self_link nor zone are provided, the provider zone is used."
  type        = string
  default     = null
}

variable "boot_disk" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
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

