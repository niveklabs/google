terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_compute_url_map" "this" {
  default_service = var.default_service
  description     = var.description
  name            = var.name
  project         = var.project

  dynamic "header_action" {
    for_each = var.header_action
    content {
      request_headers_to_remove  = header_action.value["request_headers_to_remove"]
      response_headers_to_remove = header_action.value["response_headers_to_remove"]

      dynamic "request_headers_to_add" {
        for_each = header_action.value.request_headers_to_add
        content {
          header_name  = request_headers_to_add.value["header_name"]
          header_value = request_headers_to_add.value["header_value"]
          replace      = request_headers_to_add.value["replace"]
        }
      }

      dynamic "response_headers_to_add" {
        for_each = header_action.value.response_headers_to_add
        content {
          header_name  = response_headers_to_add.value["header_name"]
          header_value = response_headers_to_add.value["header_value"]
          replace      = response_headers_to_add.value["replace"]
        }
      }

    }
  }

  dynamic "host_rule" {
    for_each = var.host_rule
    content {
      description  = host_rule.value["description"]
      hosts        = host_rule.value["hosts"]
      path_matcher = host_rule.value["path_matcher"]
    }
  }

  dynamic "path_matcher" {
    for_each = var.path_matcher
    content {
      default_service = path_matcher.value["default_service"]
      description     = path_matcher.value["description"]
      name            = path_matcher.value["name"]

      dynamic "header_action" {
        for_each = path_matcher.value.header_action
        content {
          request_headers_to_remove  = header_action.value["request_headers_to_remove"]
          response_headers_to_remove = header_action.value["response_headers_to_remove"]

          dynamic "request_headers_to_add" {
            for_each = header_action.value.request_headers_to_add
            content {
              header_name  = request_headers_to_add.value["header_name"]
              header_value = request_headers_to_add.value["header_value"]
              replace      = request_headers_to_add.value["replace"]
            }
          }

          dynamic "response_headers_to_add" {
            for_each = header_action.value.response_headers_to_add
            content {
              header_name  = response_headers_to_add.value["header_name"]
              header_value = response_headers_to_add.value["header_value"]
              replace      = response_headers_to_add.value["replace"]
            }
          }

        }
      }

      dynamic "path_rule" {
        for_each = path_matcher.value.path_rule
        content {
          paths   = path_rule.value["paths"]
          service = path_rule.value["service"]

          dynamic "route_action" {
            for_each = path_rule.value.route_action
            content {

              dynamic "cors_policy" {
                for_each = route_action.value.cors_policy
                content {
                  allow_credentials    = cors_policy.value["allow_credentials"]
                  allow_headers        = cors_policy.value["allow_headers"]
                  allow_methods        = cors_policy.value["allow_methods"]
                  allow_origin_regexes = cors_policy.value["allow_origin_regexes"]
                  allow_origins        = cors_policy.value["allow_origins"]
                  disabled             = cors_policy.value["disabled"]
                  expose_headers       = cors_policy.value["expose_headers"]
                  max_age              = cors_policy.value["max_age"]
                }
              }

              dynamic "fault_injection_policy" {
                for_each = route_action.value.fault_injection_policy
                content {

                  dynamic "abort" {
                    for_each = fault_injection_policy.value.abort
                    content {
                      http_status = abort.value["http_status"]
                      percentage  = abort.value["percentage"]
                    }
                  }

                  dynamic "delay" {
                    for_each = fault_injection_policy.value.delay
                    content {
                      percentage = delay.value["percentage"]

                      dynamic "fixed_delay" {
                        for_each = delay.value.fixed_delay
                        content {
                          nanos   = fixed_delay.value["nanos"]
                          seconds = fixed_delay.value["seconds"]
                        }
                      }

                    }
                  }

                }
              }

              dynamic "request_mirror_policy" {
                for_each = route_action.value.request_mirror_policy
                content {
                  backend_service = request_mirror_policy.value["backend_service"]
                }
              }

              dynamic "retry_policy" {
                for_each = route_action.value.retry_policy
                content {
                  num_retries      = retry_policy.value["num_retries"]
                  retry_conditions = retry_policy.value["retry_conditions"]

                  dynamic "per_try_timeout" {
                    for_each = retry_policy.value.per_try_timeout
                    content {
                      nanos   = per_try_timeout.value["nanos"]
                      seconds = per_try_timeout.value["seconds"]
                    }
                  }

                }
              }

              dynamic "timeout" {
                for_each = route_action.value.timeout
                content {
                  nanos   = timeout.value["nanos"]
                  seconds = timeout.value["seconds"]
                }
              }

              dynamic "url_rewrite" {
                for_each = route_action.value.url_rewrite
                content {
                  host_rewrite        = url_rewrite.value["host_rewrite"]
                  path_prefix_rewrite = url_rewrite.value["path_prefix_rewrite"]
                }
              }

              dynamic "weighted_backend_services" {
                for_each = route_action.value.weighted_backend_services
                content {
                  backend_service = weighted_backend_services.value["backend_service"]
                  weight          = weighted_backend_services.value["weight"]

                  dynamic "header_action" {
                    for_each = weighted_backend_services.value.header_action
                    content {
                      request_headers_to_remove  = header_action.value["request_headers_to_remove"]
                      response_headers_to_remove = header_action.value["response_headers_to_remove"]

                      dynamic "request_headers_to_add" {
                        for_each = header_action.value.request_headers_to_add
                        content {
                          header_name  = request_headers_to_add.value["header_name"]
                          header_value = request_headers_to_add.value["header_value"]
                          replace      = request_headers_to_add.value["replace"]
                        }
                      }

                      dynamic "response_headers_to_add" {
                        for_each = header_action.value.response_headers_to_add
                        content {
                          header_name  = response_headers_to_add.value["header_name"]
                          header_value = response_headers_to_add.value["header_value"]
                          replace      = response_headers_to_add.value["replace"]
                        }
                      }

                    }
                  }

                }
              }

            }
          }

          dynamic "url_redirect" {
            for_each = path_rule.value.url_redirect
            content {
              host_redirect          = url_redirect.value["host_redirect"]
              https_redirect         = url_redirect.value["https_redirect"]
              path_redirect          = url_redirect.value["path_redirect"]
              prefix_redirect        = url_redirect.value["prefix_redirect"]
              redirect_response_code = url_redirect.value["redirect_response_code"]
              strip_query            = url_redirect.value["strip_query"]
            }
          }

        }
      }

      dynamic "route_rules" {
        for_each = path_matcher.value.route_rules
        content {
          priority = route_rules.value["priority"]
          service  = route_rules.value["service"]

          dynamic "header_action" {
            for_each = route_rules.value.header_action
            content {
              request_headers_to_remove  = header_action.value["request_headers_to_remove"]
              response_headers_to_remove = header_action.value["response_headers_to_remove"]

              dynamic "request_headers_to_add" {
                for_each = header_action.value.request_headers_to_add
                content {
                  header_name  = request_headers_to_add.value["header_name"]
                  header_value = request_headers_to_add.value["header_value"]
                  replace      = request_headers_to_add.value["replace"]
                }
              }

              dynamic "response_headers_to_add" {
                for_each = header_action.value.response_headers_to_add
                content {
                  header_name  = response_headers_to_add.value["header_name"]
                  header_value = response_headers_to_add.value["header_value"]
                  replace      = response_headers_to_add.value["replace"]
                }
              }

            }
          }

          dynamic "match_rules" {
            for_each = route_rules.value.match_rules
            content {
              full_path_match = match_rules.value["full_path_match"]
              ignore_case     = match_rules.value["ignore_case"]
              prefix_match    = match_rules.value["prefix_match"]
              regex_match     = match_rules.value["regex_match"]

              dynamic "header_matches" {
                for_each = match_rules.value.header_matches
                content {
                  exact_match   = header_matches.value["exact_match"]
                  header_name   = header_matches.value["header_name"]
                  invert_match  = header_matches.value["invert_match"]
                  prefix_match  = header_matches.value["prefix_match"]
                  present_match = header_matches.value["present_match"]
                  regex_match   = header_matches.value["regex_match"]
                  suffix_match  = header_matches.value["suffix_match"]

                  dynamic "range_match" {
                    for_each = header_matches.value.range_match
                    content {
                      range_end   = range_match.value["range_end"]
                      range_start = range_match.value["range_start"]
                    }
                  }

                }
              }

              dynamic "metadata_filters" {
                for_each = match_rules.value.metadata_filters
                content {
                  filter_match_criteria = metadata_filters.value["filter_match_criteria"]

                  dynamic "filter_labels" {
                    for_each = metadata_filters.value.filter_labels
                    content {
                      name  = filter_labels.value["name"]
                      value = filter_labels.value["value"]
                    }
                  }

                }
              }

              dynamic "query_parameter_matches" {
                for_each = match_rules.value.query_parameter_matches
                content {
                  exact_match   = query_parameter_matches.value["exact_match"]
                  name          = query_parameter_matches.value["name"]
                  present_match = query_parameter_matches.value["present_match"]
                  regex_match   = query_parameter_matches.value["regex_match"]
                }
              }

            }
          }

          dynamic "route_action" {
            for_each = route_rules.value.route_action
            content {

              dynamic "cors_policy" {
                for_each = route_action.value.cors_policy
                content {
                  allow_credentials    = cors_policy.value["allow_credentials"]
                  allow_headers        = cors_policy.value["allow_headers"]
                  allow_methods        = cors_policy.value["allow_methods"]
                  allow_origin_regexes = cors_policy.value["allow_origin_regexes"]
                  allow_origins        = cors_policy.value["allow_origins"]
                  disabled             = cors_policy.value["disabled"]
                  expose_headers       = cors_policy.value["expose_headers"]
                  max_age              = cors_policy.value["max_age"]
                }
              }

              dynamic "fault_injection_policy" {
                for_each = route_action.value.fault_injection_policy
                content {

                  dynamic "abort" {
                    for_each = fault_injection_policy.value.abort
                    content {
                      http_status = abort.value["http_status"]
                      percentage  = abort.value["percentage"]
                    }
                  }

                  dynamic "delay" {
                    for_each = fault_injection_policy.value.delay
                    content {
                      percentage = delay.value["percentage"]

                      dynamic "fixed_delay" {
                        for_each = delay.value.fixed_delay
                        content {
                          nanos   = fixed_delay.value["nanos"]
                          seconds = fixed_delay.value["seconds"]
                        }
                      }

                    }
                  }

                }
              }

              dynamic "request_mirror_policy" {
                for_each = route_action.value.request_mirror_policy
                content {
                  backend_service = request_mirror_policy.value["backend_service"]
                }
              }

              dynamic "retry_policy" {
                for_each = route_action.value.retry_policy
                content {
                  num_retries      = retry_policy.value["num_retries"]
                  retry_conditions = retry_policy.value["retry_conditions"]

                  dynamic "per_try_timeout" {
                    for_each = retry_policy.value.per_try_timeout
                    content {
                      nanos   = per_try_timeout.value["nanos"]
                      seconds = per_try_timeout.value["seconds"]
                    }
                  }

                }
              }

              dynamic "timeout" {
                for_each = route_action.value.timeout
                content {
                  nanos   = timeout.value["nanos"]
                  seconds = timeout.value["seconds"]
                }
              }

              dynamic "url_rewrite" {
                for_each = route_action.value.url_rewrite
                content {
                  host_rewrite        = url_rewrite.value["host_rewrite"]
                  path_prefix_rewrite = url_rewrite.value["path_prefix_rewrite"]
                }
              }

              dynamic "weighted_backend_services" {
                for_each = route_action.value.weighted_backend_services
                content {
                  backend_service = weighted_backend_services.value["backend_service"]
                  weight          = weighted_backend_services.value["weight"]

                  dynamic "header_action" {
                    for_each = weighted_backend_services.value.header_action
                    content {
                      request_headers_to_remove  = header_action.value["request_headers_to_remove"]
                      response_headers_to_remove = header_action.value["response_headers_to_remove"]

                      dynamic "request_headers_to_add" {
                        for_each = header_action.value.request_headers_to_add
                        content {
                          header_name  = request_headers_to_add.value["header_name"]
                          header_value = request_headers_to_add.value["header_value"]
                          replace      = request_headers_to_add.value["replace"]
                        }
                      }

                      dynamic "response_headers_to_add" {
                        for_each = header_action.value.response_headers_to_add
                        content {
                          header_name  = response_headers_to_add.value["header_name"]
                          header_value = response_headers_to_add.value["header_value"]
                          replace      = response_headers_to_add.value["replace"]
                        }
                      }

                    }
                  }

                }
              }

            }
          }

          dynamic "url_redirect" {
            for_each = route_rules.value.url_redirect
            content {
              host_redirect          = url_redirect.value["host_redirect"]
              https_redirect         = url_redirect.value["https_redirect"]
              path_redirect          = url_redirect.value["path_redirect"]
              prefix_redirect        = url_redirect.value["prefix_redirect"]
              redirect_response_code = url_redirect.value["redirect_response_code"]
              strip_query            = url_redirect.value["strip_query"]
            }
          }

        }
      }

    }
  }

  dynamic "test" {
    for_each = var.test
    content {
      description = test.value["description"]
      host        = test.value["host"]
      path        = test.value["path"]
      service     = test.value["service"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

