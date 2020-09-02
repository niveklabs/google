module "google_compute_http_health_check" {
  source = "./modules/google/r/google_compute_http_health_check"

  # check_interval_sec - (optional) is a type of number
  check_interval_sec = null
  # description - (optional) is a type of string
  description = null
  # healthy_threshold - (optional) is a type of number
  healthy_threshold = null
  # host - (optional) is a type of string
  host = null
  # name - (required) is a type of string
  name = null
  # port - (optional) is a type of number
  port = null
  # project - (optional) is a type of string
  project = null
  # request_path - (optional) is a type of string
  request_path = null
  # timeout_sec - (optional) is a type of number
  timeout_sec = null
  # unhealthy_threshold - (optional) is a type of number
  unhealthy_threshold = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
