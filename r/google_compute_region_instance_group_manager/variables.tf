variable "base_instance_name" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "distribution_policy_zones" {
  description = "(optional)"
  type        = set(string)
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
  description = "(required)"
  type        = string
}

variable "target_pools" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "target_size" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "update_strategy" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "wait_for_instances" {
  description = "(optional)"
  type        = bool
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
      instance_redistribution_type = string
      max_surge_fixed              = number
      max_surge_percent            = number
      max_unavailable_fixed        = number
      max_unavailable_percent      = number
      min_ready_sec                = number
      minimal_action               = string
      type                         = string
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

