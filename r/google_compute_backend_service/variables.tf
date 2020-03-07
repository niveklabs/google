variable "affinity_cookie_ttl_sec" {
  description = "(optional) - Lifetime of cookies in seconds if session_affinity is\nGENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts\nonly until the end of the browser session (or equivalent). The\nmaximum allowed value for TTL is one day.\n\nWhen the load balancing scheme is INTERNAL, this field is not used."
  type        = number
  default     = null
}

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

variable "enable_cdn" {
  description = "(optional) - If true, enable Cloud CDN for this BackendService."
  type        = bool
  default     = null
}

variable "health_checks" {
  description = "(required) - The set of URLs to the HttpHealthCheck or HttpsHealthCheck resource\nfor health checking this BackendService. Currently at most one health\ncheck can be specified, and a health check is required.\n\nFor internal load balancing, a URL to a HealthCheck resource must be specified instead."
  type        = set(string)
}

variable "load_balancing_scheme" {
  description = "(optional) - Indicates whether the backend service will be used with internal or\nexternal load balancing. A backend service created for one type of\nload balancing cannot be used with the other. Must be 'EXTERNAL' or\n'INTERNAL_SELF_MANAGED' for a global backend service. Defaults to 'EXTERNAL'."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "port_name" {
  description = "(optional) - Name of backend port. The same name should appear in the instance\ngroups referenced by this service. Required when the load balancing\nscheme is EXTERNAL."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "protocol" {
  description = "(optional) - The protocol this BackendService uses to communicate with backends.\nPossible values are HTTP, HTTPS, HTTP2, TCP, and SSL. The default is\nHTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer\ntypes and may result in errors if used with the GA API."
  type        = string
  default     = null
}

variable "security_policy" {
  description = "(optional) - The security policy associated with this backend service."
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

variable "cdn_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cache_key_policy = list(object(
        {
          include_host           = bool
          include_protocol       = bool
          include_query_string   = bool
          query_string_blacklist = set(string)
          query_string_whitelist = set(string)
        }
      ))
      signed_url_cache_max_age_sec = number
    }
  ))
  default = []
}

variable "iap" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      oauth2_client_id            = string
      oauth2_client_secret        = string
      oauth2_client_secret_sha256 = string
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

