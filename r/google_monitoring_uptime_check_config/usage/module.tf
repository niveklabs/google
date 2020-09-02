module "google_monitoring_uptime_check_config" {
  source = "./modules/google/r/google_monitoring_uptime_check_config"

  # display_name - (required) is a type of string
  display_name = null
  # is_internal - (optional) is a type of bool
  is_internal = null
  # period - (optional) is a type of string
  period = null
  # project - (optional) is a type of string
  project = null
  # selected_regions - (optional) is a type of list of string
  selected_regions = []
  # timeout - (required) is a type of string
  timeout = null

  content_matchers = [{
    content = null
  }]

  http_check = [{
    auth_info = [{
      password = null
      username = null
    }]
    headers      = {}
    mask_headers = null
    path         = null
    port         = null
    use_ssl      = null
    validate_ssl = null
  }]

  internal_checkers = [{
    display_name    = null
    gcp_zone        = null
    name            = null
    network         = null
    peer_project_id = null
  }]

  monitored_resource = [{
    labels = {}
    type   = null
  }]

  resource_group = [{
    group_id      = null
    resource_type = null
  }]

  tcp_check = [{
    port = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
