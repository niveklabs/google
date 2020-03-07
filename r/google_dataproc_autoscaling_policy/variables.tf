variable "location" {
  description = "(optional) - The  location where the autoscaling poicy should reside.\nThe default value is 'global'."
  type        = string
  default     = null
}

variable "policy_id" {
  description = "(required) - The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),\nand hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between\n3 and 50 characters."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "basic_algorithm" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cooldown_period = string
      yarn_config = list(object(
        {
          graceful_decommission_timeout  = string
          scale_down_factor              = number
          scale_down_min_worker_fraction = number
          scale_up_factor                = number
          scale_up_min_worker_fraction   = number
        }
      ))
    }
  ))
  default = []
}

variable "secondary_worker_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_instances = number
      min_instances = number
      weight        = number
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

variable "worker_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_instances = number
      min_instances = number
      weight        = number
    }
  ))
  default = []
}

