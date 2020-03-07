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

variable "host" {
  description = "(optional) - The value of the host header in the HTTPS health check request. If\nleft empty (default value), the public IP on behalf of which this\nhealth check is performed will be used."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash."
  type        = string
}

variable "port" {
  description = "(optional) - The TCP port number for the HTTPS health check request.\nThe default value is 80."
  type        = number
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "request_path" {
  description = "(optional) - The request path of the HTTPS health check request.\nThe default value is /."
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

