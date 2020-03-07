variable "bucket_policy_only" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "default_event_based_hold" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "force_destroy" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "location" {
  description = "(optional)"
  type        = string
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

variable "requester_pays" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "storage_class" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "cors" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      max_age_seconds = number
      method          = list(string)
      origin          = list(string)
      response_header = list(string)
    }
  ))
  default = []
}

variable "encryption" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      default_kms_key_name = string
    }
  ))
  default = []
}

variable "lifecycle_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 100"
  type = set(object(
    {
      action = set(object(
        {
          storage_class = string
          type          = string
        }
      ))
      condition = set(object(
        {
          age                   = number
          created_before        = string
          is_live               = bool
          matches_storage_class = list(string)
          num_newer_versions    = number
          with_state            = string
        }
      ))
    }
  ))
  default = []
}

variable "logging" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      log_bucket        = string
      log_object_prefix = string
    }
  ))
  default = []
}

variable "retention_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      is_locked        = bool
      retention_period = number
    }
  ))
  default = []
}

variable "versioning" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled = bool
    }
  ))
  default = []
}

variable "website" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      main_page_suffix = string
      not_found_page   = string
    }
  ))
  default = []
}

