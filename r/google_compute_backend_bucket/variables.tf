variable "bucket_name" {
  description = "(required) - Cloud Storage bucket name."
  type        = string
}

variable "description" {
  description = "(optional) - An optional textual description of the resource; provided by the\nclient when the resource is created."
  type        = string
  default     = null
}

variable "enable_cdn" {
  description = "(optional) - If true, enable Cloud CDN for this BackendBucket."
  type        = bool
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "cdn_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      signed_url_cache_max_age_sec = number
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

