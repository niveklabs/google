variable "location" {
  description = "(required) - The location of the queue"
  type        = string
}

variable "name" {
  description = "(optional) - The queue name."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "app_engine_routing_override" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      host     = string
      instance = string
      service  = string
      version  = string
    }
  ))
  default = []
}

variable "rate_limits" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_burst_size            = number
      max_concurrent_dispatches = number
      max_dispatches_per_second = number
    }
  ))
  default = []
}

variable "retry_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_attempts       = number
      max_backoff        = string
      max_doublings      = number
      max_retry_duration = string
      min_backoff        = string
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

