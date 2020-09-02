variable "display_name" {
  description = "(required) - A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced."
  type        = string
}

variable "is_internal" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "period" {
  description = "(optional) - How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "selected_regions" {
  description = "(optional) - The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions."
  type        = list(string)
  default     = null
}

variable "timeout" {
  description = "(required) - The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Accepted formats https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration"
  type        = string
}

variable "content_matchers" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      content = string
      matcher = string
    }
  ))
  default = []
}

variable "http_check" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      auth_info = list(object(
        {
          password = string
          username = string
        }
      ))
      headers      = map(string)
      mask_headers = bool
      path         = string
      port         = number
      use_ssl      = bool
      validate_ssl = bool
    }
  ))
  default = []
}

variable "internal_checkers" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      display_name    = string
      gcp_zone        = string
      name            = string
      network         = string
      peer_project_id = string
    }
  ))
  default = []
}

variable "monitored_resource" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      labels = map(string)
      type   = string
    }
  ))
  default = []
}

variable "resource_group" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      group_id      = string
      resource_type = string
    }
  ))
  default = []
}

variable "tcp_check" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
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

