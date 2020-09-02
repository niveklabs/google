variable "can_ip_forward" {
  description = "(optional) - Whether to allow sending and receiving of packets with non-matching source or destination IPs. This defaults to false."
  type        = bool
  default     = null
}

variable "description" {
  description = "(optional) - A brief description of this resource."
  type        = string
  default     = null
}

variable "enable_display" {
  description = "(optional) - Enable Virtual Displays on this instance. Note: allow_stopping_for_update must be set to true in order to update this field."
  type        = bool
  default     = null
}

variable "instance_description" {
  description = "(optional) - A description of the instance."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - A set of key/value label pairs to assign to instances created from this template,"
  type        = map(string)
  default     = null
}

variable "machine_type" {
  description = "(required) - The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM."
  type        = string
}

variable "metadata" {
  description = "(optional) - Metadata key/value pairs to make available from within instances created from this template."
  type        = map(string)
  default     = null
}

variable "metadata_startup_script" {
  description = "(optional) - An alternative to using the startup-script metadata key, mostly to match the compute_instance resource. This replaces the startup-script metadata key on the created instance and thus the two mechanisms are not allowed to be used simultaneously."
  type        = string
  default     = null
}

variable "min_cpu_platform" {
  description = "(optional) - Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as Intel Haswell or Intel Skylake."
  type        = string
  default     = null
}

variable "name" {
  description = "(optional) - The name of the instance template. If you leave this blank, Terraform will auto-generate a unique name."
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "(optional) - Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - An instance template is a global resource that is not bound to a zone or a region. However, you can still specify some regional resources in an instance template, which restricts the template to the region where that resource resides. For example, a custom subnetwork resource is tied to a specific region. Defaults to the region of the Provider if no value is given."
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional) - Tags to attach to the instance."
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

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
    }
  ))
  default = []
}

