module "google_dns_policy" {
  source = "./modules/google/r/google_dns_policy"

  # description - (optional) is a type of string
  description = null
  # enable_inbound_forwarding - (optional) is a type of bool
  enable_inbound_forwarding = null
  # enable_logging - (optional) is a type of bool
  enable_logging = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  alternative_name_server_config = [{
    target_name_servers = [{
      ipv4_address = null
    }]
  }]

  networks = [{
    network_url = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
