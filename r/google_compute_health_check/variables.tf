variable "check_interval_sec" {
  description = "(optional) - How often (in seconds) to send a health check. The default value is 5\nseconds."
  type        = number
  default     = null
}

variable "description" {
  description = "(optional) - An optional description of this resource. Provide this property when\nyou create the resource."
  type        = string
  default     = null
}

variable "healthy_threshold" {
  description = "(optional) - A so-far unhealthy instance will be marked healthy after this many\nconsecutive successes. The default value is 2."
  type        = number
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

variable "timeout_sec" {
  description = "(optional) - How long (in seconds) to wait before claiming failure.\nThe default value is 5 seconds.  It is invalid for timeoutSec to have\ngreater value than checkIntervalSec."
  type        = number
  default     = null
}

variable "unhealthy_threshold" {
  description = "(optional) - A so-far healthy instance will be marked unhealthy after this many\nconsecutive failures. The default value is 2."
  type        = number
  default     = null
}

variable "http2_health_check" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      host               = string
      port               = number
      port_name          = string
      port_specification = string
      proxy_header       = string
      request_path       = string
      response           = string
    }
  ))
  default = []
}

variable "http_health_check" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      host               = string
      port               = number
      port_name          = string
      port_specification = string
      proxy_header       = string
      request_path       = string
      response           = string
    }
  ))
  default = []
}

variable "https_health_check" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      host               = string
      port               = number
      port_name          = string
      port_specification = string
      proxy_header       = string
      request_path       = string
      response           = string
    }
  ))
  default = []
}

variable "ssl_health_check" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      port               = number
      port_name          = string
      port_specification = string
      proxy_header       = string
      request            = string
      response           = string
    }
  ))
  default = []
}

variable "tcp_health_check" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      port               = number
      port_name          = string
      port_specification = string
      proxy_header       = string
      request            = string
      response           = string
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

