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

variable "health_checks" {
  description = "(required) - The set of URLs to HealthCheck resources for health checking\nthis RegionBackendService. Currently at most one health\ncheck can be specified, and a health check is required."
  type        = set(string)
}

variable "load_balancing_scheme" {
  description = "(optional) - Indicates what kind of load balancing this regional backend service\nwill be used for. A backend service created for one type of load\nbalancing cannot be used with the other(s). Default value: \"INTERNAL\" Possible values: [\"INTERNAL\", \"INTERNAL_MANAGED\"]"
  type        = string
  default     = null
}

variable "locality_lb_policy" {
  description = "(optional) - The load balancing algorithm used within the scope of the locality.\nThe possible values are -\n\nROUND_ROBIN - This is a simple policy in which each healthy backend\n              is selected in round robin order.\n\nLEAST_REQUEST - An O(1) algorithm which selects two random healthy\n                hosts and picks the host which has fewer active requests.\n\nRING_HASH - The ring/modulo hash load balancer implements consistent\n            hashing to backends. The algorithm has the property that the\n            addition/removal of a host from a set of N hosts only affects\n            1/N of the requests.\n\nRANDOM - The load balancer selects a random healthy host.\n\nORIGINAL_DESTINATION - Backend host is selected based on the client\n                       connection metadata, i.e., connections are opened\n                       to the same address as the destination address of\n                       the incoming connection before the connection\n                       was redirected to the load balancer.\n\nMAGLEV - used as a drop in replacement for the ring hash load balancer.\n         Maglev is not as stable as ring hash but has faster table lookup\n         build times and host selection times. For more information about\n         Maglev, refer to https://ai.google/research/pubs/pub44824\n\nThis field is applicable only when the 'load_balancing_scheme' is set to\nINTERNAL_MANAGED and the 'protocol' is set to HTTP, HTTPS, or HTTP2. Possible values: [\"ROUND_ROBIN\", \"LEAST_REQUEST\", \"RING_HASH\", \"RANDOM\", \"ORIGINAL_DESTINATION\", \"MAGLEV\"]"
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
  description = "(optional) - The protocol this RegionBackendService uses to communicate with backends.\nThe default is HTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer\ntypes and may result in errors if used with the GA API. Possible values: [\"HTTP\", \"HTTPS\", \"HTTP2\", \"SSL\", \"TCP\", \"UDP\"]"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The Region in which the created backend service should reside.\nIf it is not provided, the provider region is used."
  type        = string
  default     = null
}

variable "session_affinity" {
  description = "(optional) - Type of session affinity to use. The default is NONE. Session affinity is\nnot applicable if the protocol is UDP. Possible values: [\"NONE\", \"CLIENT_IP\", \"CLIENT_IP_PORT_PROTO\", \"CLIENT_IP_PROTO\", \"GENERATED_COOKIE\", \"HEADER_FIELD\", \"HTTP_COOKIE\"]"
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
      failover                     = bool
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

variable "circuit_breakers" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_connections             = number
      max_pending_requests        = number
      max_requests                = number
      max_requests_per_connection = number
      max_retries                 = number
    }
  ))
  default = []
}

variable "consistent_hash" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      http_cookie = list(object(
        {
          name = string
          path = string
          ttl = list(object(
            {
              nanos   = number
              seconds = number
            }
          ))
        }
      ))
      http_header_name  = string
      minimum_ring_size = number
    }
  ))
  default = []
}

variable "failover_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      disable_connection_drain_on_failover = bool
      drop_traffic_if_unhealthy            = bool
      failover_ratio                       = number
    }
  ))
  default = []
}

variable "log_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enable      = bool
      sample_rate = number
    }
  ))
  default = []
}

variable "outlier_detection" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      base_ejection_time = list(object(
        {
          nanos   = number
          seconds = number
        }
      ))
      consecutive_errors                    = number
      consecutive_gateway_failure           = number
      enforcing_consecutive_errors          = number
      enforcing_consecutive_gateway_failure = number
      enforcing_success_rate                = number
      interval = list(object(
        {
          nanos   = number
          seconds = number
        }
      ))
      max_ejection_percent        = number
      success_rate_minimum_hosts  = number
      success_rate_request_volume = number
      success_rate_stdev_factor   = number
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

