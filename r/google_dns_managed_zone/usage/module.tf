module "google_dns_managed_zone" {
  source = "./modules/google/r/google_dns_managed_zone"

  # description - (optional) is a type of string
  description = null
  # dns_name - (required) is a type of string
  dns_name = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # visibility - (optional) is a type of string
  visibility = null

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

  forwarding_config = [{
    target_name_servers = [{
      forwarding_path = null
      ipv4_address    = null
    }]
  }]

  peering_config = [{
    target_network = [{
      network_url = null
    }]
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
