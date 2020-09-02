variable "default_service" {
  description = "(optional) - The full or partial URL of the defaultService resource to which traffic is directed if\nnone of the hostRules match. If defaultRouteAction is additionally specified, advanced\nrouting actions like URL Rewrites, etc. take effect prior to sending the request to the\nbackend. However, if defaultService is specified, defaultRouteAction cannot contain any\nweightedBackendServices. Conversely, if routeAction specifies any\nweightedBackendServices, service must not be specified.  Only one of defaultService,\ndefaultUrlRedirect or defaultRouteAction.weightedBackendService must be set."
  type        = string
  default     = null
}

variable "description" {
  description = "(optional) - An optional description of this resource. Provide this property when\nyou create the resource."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The Region in which the url map should reside.\nIf it is not provided, the provider region is used."
  type        = string
  default     = null
}

variable "default_url_redirect" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      host_redirect          = string
      https_redirect         = bool
      path_redirect          = string
      prefix_redirect        = string
      redirect_response_code = string
      strip_query            = bool
    }
  ))
  default = []
}

variable "host_rule" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      description  = string
      hosts        = set(string)
      path_matcher = string
    }
  ))
  default = []
}

variable "path_matcher" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      default_service = string
      default_url_redirect = list(object(
        {
          host_redirect          = string
          https_redirect         = bool
          path_redirect          = string
          prefix_redirect        = string
          redirect_response_code = string
          strip_query            = bool
        }
      ))
      description = string
      name        = string
      path_rule = list(object(
        {
          paths = set(string)
          route_action = list(object(
            {
              cors_policy = list(object(
                {
                  allow_credentials    = bool
                  allow_headers        = list(string)
                  allow_methods        = list(string)
                  allow_origin_regexes = list(string)
                  allow_origins        = list(string)
                  disabled             = bool
                  expose_headers       = list(string)
                  max_age              = number
                }
              ))
              fault_injection_policy = list(object(
                {
                  abort = list(object(
                    {
                      http_status = number
                      percentage  = number
                    }
                  ))
                  delay = list(object(
                    {
                      fixed_delay = list(object(
                        {
                          nanos   = number
                          seconds = string
                        }
                      ))
                      percentage = number
                    }
                  ))
                }
              ))
              request_mirror_policy = list(object(
                {
                  backend_service = string
                }
              ))
              retry_policy = list(object(
                {
                  num_retries = number
                  per_try_timeout = list(object(
                    {
                      nanos   = number
                      seconds = string
                    }
                  ))
                  retry_conditions = list(string)
                }
              ))
              timeout = list(object(
                {
                  nanos   = number
                  seconds = string
                }
              ))
              url_rewrite = list(object(
                {
                  host_rewrite        = string
                  path_prefix_rewrite = string
                }
              ))
              weighted_backend_services = list(object(
                {
                  backend_service = string
                  header_action = list(object(
                    {
                      request_headers_to_add = list(object(
                        {
                          header_name  = string
                          header_value = string
                          replace      = bool
                        }
                      ))
                      request_headers_to_remove = list(string)
                      response_headers_to_add = list(object(
                        {
                          header_name  = string
                          header_value = string
                          replace      = bool
                        }
                      ))
                      response_headers_to_remove = list(string)
                    }
                  ))
                  weight = number
                }
              ))
            }
          ))
          service = string
          url_redirect = list(object(
            {
              host_redirect          = string
              https_redirect         = bool
              path_redirect          = string
              prefix_redirect        = string
              redirect_response_code = string
              strip_query            = bool
            }
          ))
        }
      ))
      route_rules = list(object(
        {
          header_action = list(object(
            {
              request_headers_to_add = list(object(
                {
                  header_name  = string
                  header_value = string
                  replace      = bool
                }
              ))
              request_headers_to_remove = list(string)
              response_headers_to_add = list(object(
                {
                  header_name  = string
                  header_value = string
                  replace      = bool
                }
              ))
              response_headers_to_remove = list(string)
            }
          ))
          match_rules = list(object(
            {
              full_path_match = string
              header_matches = list(object(
                {
                  exact_match   = string
                  header_name   = string
                  invert_match  = bool
                  prefix_match  = string
                  present_match = bool
                  range_match = list(object(
                    {
                      range_end   = number
                      range_start = number
                    }
                  ))
                  regex_match  = string
                  suffix_match = string
                }
              ))
              ignore_case = bool
              metadata_filters = list(object(
                {
                  filter_labels = list(object(
                    {
                      name  = string
                      value = string
                    }
                  ))
                  filter_match_criteria = string
                }
              ))
              prefix_match = string
              query_parameter_matches = list(object(
                {
                  exact_match   = string
                  name          = string
                  present_match = bool
                  regex_match   = string
                }
              ))
              regex_match = string
            }
          ))
          priority = number
          route_action = list(object(
            {
              cors_policy = list(object(
                {
                  allow_credentials    = bool
                  allow_headers        = list(string)
                  allow_methods        = list(string)
                  allow_origin_regexes = list(string)
                  allow_origins        = list(string)
                  disabled             = bool
                  expose_headers       = list(string)
                  max_age              = number
                }
              ))
              fault_injection_policy = list(object(
                {
                  abort = list(object(
                    {
                      http_status = number
                      percentage  = number
                    }
                  ))
                  delay = list(object(
                    {
                      fixed_delay = list(object(
                        {
                          nanos   = number
                          seconds = string
                        }
                      ))
                      percentage = number
                    }
                  ))
                }
              ))
              request_mirror_policy = list(object(
                {
                  backend_service = string
                }
              ))
              retry_policy = list(object(
                {
                  num_retries = number
                  per_try_timeout = list(object(
                    {
                      nanos   = number
                      seconds = string
                    }
                  ))
                  retry_conditions = list(string)
                }
              ))
              timeout = list(object(
                {
                  nanos   = number
                  seconds = string
                }
              ))
              url_rewrite = list(object(
                {
                  host_rewrite        = string
                  path_prefix_rewrite = string
                }
              ))
              weighted_backend_services = list(object(
                {
                  backend_service = string
                  header_action = list(object(
                    {
                      request_headers_to_add = list(object(
                        {
                          header_name  = string
                          header_value = string
                          replace      = bool
                        }
                      ))
                      request_headers_to_remove = list(string)
                      response_headers_to_add = list(object(
                        {
                          header_name  = string
                          header_value = string
                          replace      = bool
                        }
                      ))
                      response_headers_to_remove = list(string)
                    }
                  ))
                  weight = number
                }
              ))
            }
          ))
          service = string
          url_redirect = list(object(
            {
              host_redirect          = string
              https_redirect         = bool
              path_redirect          = string
              prefix_redirect        = string
              redirect_response_code = string
              strip_query            = bool
            }
          ))
        }
      ))
    }
  ))
  default = []
}

variable "test" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      description = string
      host        = string
      path        = string
      service     = string
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

