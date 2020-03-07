module "google_compute_security_policy" {
  source = "./google/r/google_compute_security_policy"

  description = null
  name        = null
  project     = null

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
