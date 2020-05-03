module "google_compute_url_map" {
  source = "./modules/google/r/google_compute_url_map"

  default_service = null
  description     = null
  name            = null
  project         = null

  header_action = [{
    request_headers_to_add = [{
      header_name  = null
      header_value = null
      replace      = null
    }]
    request_headers_to_remove = []
    response_headers_to_add = [{
      header_name  = null
      header_value = null
      replace      = null
    }]
    response_headers_to_remove = []
  }]

  host_rule = [{
    description  = null
    hosts        = []
    path_matcher = null
  }]

  path_matcher = [{
    default_service = null
    description     = null
    header_action = [{
      request_headers_to_add = [{
        header_name  = null
        header_value = null
        replace      = null
      }]
      request_headers_to_remove = []
      response_headers_to_add = [{
        header_name  = null
        header_value = null
        replace      = null
      }]
      response_headers_to_remove = []
    }]
    name = null
    path_rule = [{
      paths = []
      route_action = [{
        cors_policy = [{
          allow_credentials    = null
          allow_headers        = []
          allow_methods        = []
          allow_origin_regexes = []
          allow_origins        = []
          disabled             = null
          expose_headers       = []
          max_age              = null
        }]
        fault_injection_policy = [{
          abort = [{
            http_status = null
            percentage  = null
          }]
          delay = [{
            fixed_delay = [{
              nanos   = null
              seconds = null
            }]
            percentage = null
          }]
        }]
        request_mirror_policy = [{
          backend_service = null
        }]
        retry_policy = [{
          num_retries = null
          per_try_timeout = [{
            nanos   = null
            seconds = null
          }]
          retry_conditions = []
        }]
        timeout = [{
          nanos   = null
          seconds = null
        }]
        url_rewrite = [{
          host_rewrite        = null
          path_prefix_rewrite = null
        }]
        weighted_backend_services = [{
          backend_service = null
          header_action = [{
            request_headers_to_add = [{
              header_name  = null
              header_value = null
              replace      = null
            }]
            request_headers_to_remove = []
            response_headers_to_add = [{
              header_name  = null
              header_value = null
              replace      = null
            }]
            response_headers_to_remove = []
          }]
          weight = null
        }]
      }]
      service = null
      url_redirect = [{
        host_redirect          = null
        https_redirect         = null
        path_redirect          = null
        prefix_redirect        = null
        redirect_response_code = null
        strip_query            = null
      }]
    }]
    route_rules = [{
      header_action = [{
        request_headers_to_add = [{
          header_name  = null
          header_value = null
          replace      = null
        }]
        request_headers_to_remove = []
        response_headers_to_add = [{
          header_name  = null
          header_value = null
          replace      = null
        }]
        response_headers_to_remove = []
      }]
      match_rules = [{
        full_path_match = null
        header_matches = [{
          exact_match   = null
          header_name   = null
          invert_match  = null
          prefix_match  = null
          present_match = null
          range_match = [{
            range_end   = null
            range_start = null
          }]
          regex_match  = null
          suffix_match = null
        }]
        ignore_case = null
        metadata_filters = [{
          filter_labels = [{
            name  = null
            value = null
          }]
          filter_match_criteria = null
        }]
        prefix_match = null
        query_parameter_matches = [{
          exact_match   = null
          name          = null
          present_match = null
          regex_match   = null
        }]
        regex_match = null
      }]
      priority = null
      route_action = [{
        cors_policy = [{
          allow_credentials    = null
          allow_headers        = []
          allow_methods        = []
          allow_origin_regexes = []
          allow_origins        = []
          disabled             = null
          expose_headers       = []
          max_age              = null
        }]
        fault_injection_policy = [{
          abort = [{
            http_status = null
            percentage  = null
          }]
          delay = [{
            fixed_delay = [{
              nanos   = null
              seconds = null
            }]
            percentage = null
          }]
        }]
        request_mirror_policy = [{
          backend_service = null
        }]
        retry_policy = [{
          num_retries = null
          per_try_timeout = [{
            nanos   = null
            seconds = null
          }]
          retry_conditions = []
        }]
        timeout = [{
          nanos   = null
          seconds = null
        }]
        url_rewrite = [{
          host_rewrite        = null
          path_prefix_rewrite = null
        }]
        weighted_backend_services = [{
          backend_service = null
          header_action = [{
            request_headers_to_add = [{
              header_name  = null
              header_value = null
              replace      = null
            }]
            request_headers_to_remove = []
            response_headers_to_add = [{
              header_name  = null
              header_value = null
              replace      = null
            }]
            response_headers_to_remove = []
          }]
          weight = null
        }]
      }]
      service = null
      url_redirect = [{
        host_redirect          = null
        https_redirect         = null
        path_redirect          = null
        prefix_redirect        = null
        redirect_response_code = null
        strip_query            = null
      }]
    }]
  }]

  test = [{
    description = null
    host        = null
    path        = null
    service     = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
