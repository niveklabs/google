module "google_compute_health_check" {
  source = "./google/r/google_compute_health_check"

  check_interval_sec  = null
  description         = null
  healthy_threshold   = null
  name                = null
  project             = null
  timeout_sec         = null
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
