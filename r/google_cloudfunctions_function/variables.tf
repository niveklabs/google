variable "available_memory_mb" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "entry_point" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "environment_variables" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "https_trigger_url" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "ingress_settings" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "max_instances" {
  description = "(optional)"
  type        = number
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

variable "runtime" {
  description = "(required)"
  type        = string
}

variable "service_account_email" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_archive_bucket" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_archive_object" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "timeout" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "trigger_http" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "vpc_connector" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "vpc_connector_egress_settings" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "event_trigger" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      event_type = string
      failure_policy = list(object(
        {
          retry = bool
        }
      ))
      resource = string
    }
  ))
  default = []
}

variable "source_repository" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      deployed_url = string
      url          = string
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
      read   = string
      update = string
    }
  ))
  default = []
}

