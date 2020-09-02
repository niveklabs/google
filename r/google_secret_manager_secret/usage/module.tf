module "google_secret_manager_secret" {
  source = "./modules/google/r/google_secret_manager_secret"

  # labels - (optional) is a type of map of string
  labels = {}
  # project - (optional) is a type of string
  project = null
  # secret_id - (required) is a type of string
  secret_id = null

  replication = [{
    automatic = null
    user_managed = [{
      replicas = [{
        location = null
      }]
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
