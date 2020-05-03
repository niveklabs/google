variable "connection_draining_timeout_sec" {
  description = "(optional) - Time for which instance will be drained (not accept new\nconnections, but still work to finish started)."
  type        = number
  default     = null
}

variable "description" {
  description = "(optional) - An optional description of this resource."
  type        = string
  default     = null
}

variable "health_checks" {
  description = "(required) - The set of URLs to HealthCheck resources for health checking\nthis RegionBackendService. Currently at most one health\ncheck can be specified, and a health check is required."
  type        = set(string)
}

variable "load_balancing_scheme" {
  description = "(optional) - Indicates what kind of load balancing this regional backend service\nwill be used for. A backend service created for one type of load\nbalancing cannot be used with the other(s). Must be 'INTERNAL' or\n'INTERNAL_MANAGED'. Defaults to 'INTERNAL'."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "network" {
  description = "(optional) - The URL of the network to which this backend service belongs.\nThis field can only be specified when the load balancing scheme is set to INTERNAL."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "protocol" {
  description = "(optional) - The protocol this RegionBackendService uses to communicate with backends.\nPossible values are HTTP, HTTPS, HTTP2, SSL, TCP, and UDP. The default is\nHTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer\ntypes and may result in errors if used with the GA API."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The Region in which the created backend service should reside.\nIf it is not provided, the provider region is used."
  type        = string
  default     = null
}

variable "session_affinity" {
  description = "(optional) - Type of session affinity to use. The default is NONE. Session affinity is\nnot applicable if the protocol is UDP."
  type        = string
  default     = null
}

variable "timeout_sec" {
  description = "(optional) - How many seconds to wait for the backend before considering it a\nfailed request. Default is 30 seconds. Valid range is [1, 86400]."
  type        = number
  default     = null
}

variable "backend" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      balancing_mode               = string
      capacity_scaler              = number
      description                  = string
      group                        = string
      max_connections              = number
      max_connections_per_endpoint = number
      max_connections_per_instance = number
      max_rate                     = number
      max_rate_per_endpoint        = number
      max_rate_per_instance        = number
      max_utilization              = number
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

