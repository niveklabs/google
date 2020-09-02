module "google_deployment_manager_deployment" {
  source = "./modules/google/r/google_deployment_manager_deployment"

  # create_policy - (optional) is a type of string
  create_policy = null
  # delete_policy - (optional) is a type of string
  delete_policy = null
  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # preview - (optional) is a type of bool
  preview = null
  # project - (optional) is a type of string
  project = null

  labels = [{
    key   = null
    value = null
  }]

  target = [{
    config = [{
      content = null
    }]
    imports = [{
      content = null
      name    = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
