module "google_active_directory_domain_trust" {
  source = "./modules/google/r/google_active_directory_domain_trust"

  # domain - (required) is a type of string
  domain = null
  # project - (optional) is a type of string
  project = null
  # selective_authentication - (optional) is a type of bool
  selective_authentication = null
  # target_dns_ip_addresses - (required) is a type of set of string
  target_dns_ip_addresses = []
  # target_domain_name - (required) is a type of string
  target_domain_name = null
  # trust_direction - (required) is a type of string
  trust_direction = null
  # trust_handshake_secret - (required) is a type of string
  trust_handshake_secret = null
  # trust_type - (required) is a type of string
  trust_type = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
