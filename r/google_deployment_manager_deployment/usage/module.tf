module "google_deployment_manager_deployment" {
  source = "./modules/google/r/google_deployment_manager_deployment"

  create_policy = null
  delete_policy = null
  description   = null
  name          = null
  preview       = null
  project       = null

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
