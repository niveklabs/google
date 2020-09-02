variable "bucket_policy_only" {
  description = "(optional) - Enables Bucket Policy Only access to a bucket."
  type        = bool
  default     = null
}

variable "default_event_based_hold" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "force_destroy" {
  description = "(optional) - When deleting a bucket, this boolean option will delete all contained objects. If you try to delete a bucket that contains objects, Terraform will fail that run."
  type        = bool
  default     = null
}

variable "labels" {
  description = "(optional) - A set of key/value label pairs to assign to the bucket."
  type        = map(string)
  default     = null
}

variable "location" {
  description = "(optional) - The GCS location"
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - The name of the bucket."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "requester_pays" {
  description = "(optional) - Enables Requester Pays on a storage bucket."
  type        = bool
  default     = null
}

variable "storage_class" {
  description = "(optional) - The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE."
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

