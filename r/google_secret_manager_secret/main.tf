terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

resource "google_secret_manager_secret" "this" {
  labels    = var.labels
  project   = var.project
  secret_id = var.secret_id

  dynamic "replication" {
    for_each = var.replication
    content {
      automatic = replication.value["automatic"]

      dynamic "user_managed" {
        for_each = replication.value.user_managed
        content {

          dynamic "replicas" {
            for_each = user_managed.value.replicas
            content {
              location = replicas.value["location"]
            }
          }

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

