module "google_compute_region_health_check" {
  source = "./modules/google/r/google_compute_region_health_check"

  # check_interval_sec - (optional) is a type of number
  check_interval_sec = null
  # description - (optional) is a type of string
  description = null
  # healthy_threshold - (optional) is a type of number
  healthy_threshold = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # timeout_sec - (optional) is a type of number
  timeout_sec = null
  # unhealthy_threshold - (optional) is a type of number
  unhealthy_threshold = null

  http2_health_check = [{
    host               = null
    port               = null
    port_name          = null
    port_specification = null
    proxy_header       = null
    request_path       = null
    response           = null
  }]

  http_health_check = [{
    host               = null
    port               = null
    port_name          = null
    port_specification = null
    proxy_header       = null
    request_path       = null
    response           = null
  }]

  https_health_check = [{
    host               = null
    port               = null
    port_name          = null
    port_specification = null
    proxy_header       = null
    request_path       = null
    response           = null
  }]

  ssl_health_check = [{
    port               = null
    port_name          = null
    port_specification = null
    proxy_header       = null
    request            = null
    response           = null
  }]

  tcp_health_check = [{
    port               = null
    port_name          = null
    port_specification = null
    proxy_header       = null
    request            = null
    response           = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
