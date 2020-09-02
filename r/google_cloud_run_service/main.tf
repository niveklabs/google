terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_cloud_run_service" "this" {
  autogenerate_revision_name = var.autogenerate_revision_name
  location                   = var.location
  name                       = var.name
  project                    = var.project

  dynamic "metadata" {
    for_each = var.metadata
    content {
      annotations = metadata.value["annotations"]
      labels      = metadata.value["labels"]
      namespace   = metadata.value["namespace"]
    }
  }

  dynamic "template" {
    for_each = var.template
    content {

      dynamic "metadata" {
        for_each = template.value.metadata
        content {
          annotations = metadata.value["annotations"]
          labels      = metadata.value["labels"]
          name        = metadata.value["name"]
          namespace   = metadata.value["namespace"]
        }
      }

      dynamic "spec" {
        for_each = template.value.spec
        content {
          container_concurrency = spec.value["container_concurrency"]
          service_account_name  = spec.value["service_account_name"]
          timeout_seconds       = spec.value["timeout_seconds"]

          dynamic "containers" {
            for_each = spec.value.containers
            content {
              args        = containers.value["args"]
              command     = containers.value["command"]
              image       = containers.value["image"]
              working_dir = containers.value["working_dir"]

              dynamic "env" {
                for_each = containers.value.env
                content {
                  name  = env.value["name"]
                  value = env.value["value"]
                }
              }

              dynamic "env_from" {
                for_each = containers.value.env_from
                content {
                  prefix = env_from.value["prefix"]

                  dynamic "config_map_ref" {
                    for_each = env_from.value.config_map_ref
                    content {
                      optional = config_map_ref.value["optional"]

                      dynamic "local_object_reference" {
                        for_each = config_map_ref.value.local_object_reference
                        content {
                          name = local_object_reference.value["name"]
                        }
                      }

                    }
                  }

                  dynamic "secret_ref" {
                    for_each = env_from.value.secret_ref
                    content {
                      optional = secret_ref.value["optional"]

                      dynamic "local_object_reference" {
                        for_each = secret_ref.value.local_object_reference
                        content {
                          name = local_object_reference.value["name"]
                        }
                      }

                    }
                  }

                }
              }

              dynamic "resources" {
                for_each = containers.value.resources
                content {
                  limits   = resources.value["limits"]
                  requests = resources.value["requests"]
                }
              }

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

  dynamic "traffic" {
    for_each = var.traffic
    content {
      latest_revision = traffic.value["latest_revision"]
      percent         = traffic.value["percent"]
      revision_name   = traffic.value["revision_name"]
    }
  }

}

