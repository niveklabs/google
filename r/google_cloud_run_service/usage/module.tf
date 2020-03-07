module "google_cloud_run_service" {
  source = "./google/r/google_cloud_run_service"

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

  template = [{
    metadata = [{
      annotations      = {}
      generation       = null
      labels           = {}
      name             = null
      namespace        = null
      resource_version = null
      self_link        = null
      uid              = null
    }]
    spec = [{
      container_concurrency = null
      containers = [{
        args    = []
        command = []
        env = [{
          name  = null
          value = null
        }]
        env_from = [{
          config_map_ref = [{
            local_object_reference = [{
              name = null
            }]
            optional = null
          }]
          prefix = null
          secret_ref = [{
            local_object_reference = [{
              name = null
            }]
            optional = null
          }]
        }]
        image = null
        resources = [{
          limits   = {}
          requests = {}
        }]
        working_dir = null
      }]
      service_account_name = null
      serving_state        = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  traffic = [{
    latest_revision = null
    percent         = null
    revision_name   = null
  }]
}
