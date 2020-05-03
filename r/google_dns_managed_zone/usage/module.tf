module "google_dns_managed_zone" {
  source = "./modules/google/r/google_dns_managed_zone"

  description = null
  dns_name    = null
  labels      = {}
  name        = null
  project     = null
  visibility  = null

  dnssec_config = [{
    default_key_specs = [{
      algorithm  = null
      key_length = null
      key_type   = null
      kind       = null
    }]
    kind          = null
    non_existence = null
    state         = null
  }]

  private_visibility_config = [{
    networks = [{
      network_url = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
