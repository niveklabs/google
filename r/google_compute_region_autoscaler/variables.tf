variable "description" {
  description = "(optional) - An optional description of this resource."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. The name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - URL of the region where the instance group resides."
  type        = string
  default     = null
}

variable "target" {
  description = "(required) - URL of the managed instance group that this autoscaler will scale."
  type        = string
}

variable "autoscaling_policy" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      cooldown_period = number
      cpu_utilization = list(object(
        {
          target = number
        }
      ))
      load_balancing_utilization = list(object(
        {
          target = number
        }
      ))
      max_replicas = number
      metric = list(object(
        {
          name   = string
          target = number
          type   = string
        }
      ))
      min_replicas = number
      mode         = string
    }
  ))
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

