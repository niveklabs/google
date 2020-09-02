module "google_game_services_game_server_cluster" {
  source = "./modules/google/r/google_game_services_game_server_cluster"

  # cluster_id - (required) is a type of string
  cluster_id = null
  # description - (optional) is a type of string
  description = null
  # labels - (optional) is a type of map of string
  labels = {}
  # location - (optional) is a type of string
  location = null
  # project - (optional) is a type of string
  project = null
  # realm_id - (required) is a type of string
  realm_id = null

  connection_info = [{
    gke_cluster_reference = [{
      cluster = null
    }]
    namespace = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
