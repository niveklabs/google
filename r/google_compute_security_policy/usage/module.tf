module "google_compute_security_policy" {
  source = "./modules/google/r/google_compute_security_policy"

  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  rule = [{
    action      = null
    description = null
    match = [{
      config = [{
        src_ip_ranges = []
      }]
      expr = [{
        expression = null
      }]
      versioned_expr = null
    }]
    preview  = null
    priority = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
