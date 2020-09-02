module "google_cloud_run_domain_mapping" {
  source = "./modules/google/r/google_cloud_run_domain_mapping"

  # location - (required) is a type of string
  location = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

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
