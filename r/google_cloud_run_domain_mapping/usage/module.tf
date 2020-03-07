module "google_cloud_run_domain_mapping" {
  source = "./google/r/google_cloud_run_domain_mapping"

  location = null
  name     = null
  project  = null

  metadata = [{
    annotations      = {}
    generation       = null
    labels           = {}
    namespace        = null
    resource_version = null
    self_link        = null
    uid              = null
  }]

  spec = [{
    certificate_mode = null
    force_override   = null
    route_name       = null
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
