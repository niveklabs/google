module "google_network_management_connectivity_test" {
  source = [{
    instance     = null
    ip_address   = null
    network      = null
    network_type = null
    port         = null
    project_id   = null
  }]

  # description - (optional) is a type of string
  description = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # protocol - (optional) is a type of string
  protocol = null
  # related_projects - (optional) is a type of list of string
  related_projects = []

  destination = [{
    instance   = null
    ip_address = null
    network    = null
    port       = null
    project_id = null
  }]


  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
