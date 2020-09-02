terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_game_services_game_server_cluster" "this" {
  cluster_id  = var.cluster_id
  description = var.description
  labels      = var.labels
  location    = var.location
  project     = var.project
  realm_id    = var.realm_id

  dynamic "connection_info" {
    for_each = var.connection_info
    content {
      namespace = connection_info.value["namespace"]

      dynamic "gke_cluster_reference" {
        for_each = connection_info.value.gke_cluster_reference
        content {
          cluster = gke_cluster_reference.value["cluster"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

