module "google_compute_interconnect_attachment" {
  source = "./modules/google/r/google_compute_interconnect_attachment"

  # admin_enabled - (optional) is a type of bool
  admin_enabled = null
  # bandwidth - (optional) is a type of string
  bandwidth = null
  # candidate_subnets - (optional) is a type of list of string
  candidate_subnets = []
  # description - (optional) is a type of string
  description = null
  # edge_availability_domain - (optional) is a type of string
  edge_availability_domain = null
  # interconnect - (optional) is a type of string
  interconnect = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # router - (required) is a type of string
  router = null
  # type - (optional) is a type of string
  type = null
  # vlan_tag8021q - (optional) is a type of number
  vlan_tag8021q = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
