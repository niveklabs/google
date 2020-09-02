variable "base_instance_name" {
  description = "(required) - The base instance name to use for instances in this group. The value must be a valid RFC1035 name. Supported characters are lowercase letters, numbers, and hyphens (-). Instances are named by appending a hyphen and a random four-character string to the base instance name."
  type        = string
}

variable "description" {
  description = "(optional) - An optional textual description of the instance group manager."
  type        = string
  default     = null
}

variable "instance_template" {
  description = "(optional) - The full URL to an instance template from which all new instances of this version will be created."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - The name of the instance group manager. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "target_pools" {
  description = "(optional) - The full URL of all target pools to which new instances in the group are added. Updating the target pools attribute does not affect existing instances."
  type        = set(string)
  default     = null
}

variable "target_size" {
  description = "(optional) - The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0."
  type        = number
  default     = null
}

variable "wait_for_instances" {
  description = "(optional) - Whether to wait for all instances to be created/updated before returning. Note that if this is set to true and the operation does not succeed, Terraform will continue trying until it times out."
  type        = bool
  default     = null
}

variable "zone" {
  description = "(optional) - The zone that instances in this group should be created in."
  type        = string
  default     = null
}

variable "auto_healing_policies" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      health_check      = string
      initial_delay_sec = number
    }
  ))
  default = []
}

variable "named_port" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      name = string
      port = number
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

variable "update_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_surge_fixed         = number
      max_surge_percent       = number
      max_unavailable_fixed   = number
      max_unavailable_percent = number
      min_ready_sec           = number
      minimal_action          = string
      type                    = string
    }
  ))
  default = []
}

variable "version" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      instance_template = string
      name              = string
      target_size = list(object(
        {
          fixed   = number
          percent = number
        }
      ))
    }
  ))
}

