terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_dataproc_autoscaling_policy" "this" {
  location  = var.location
  policy_id = var.policy_id
  project   = var.project

  dynamic "basic_algorithm" {
    for_each = var.basic_algorithm
    content {
      cooldown_period = basic_algorithm.value["cooldown_period"]

      dynamic "yarn_config" {
        for_each = basic_algorithm.value.yarn_config
        content {
          graceful_decommission_timeout  = yarn_config.value["graceful_decommission_timeout"]
          scale_down_factor              = yarn_config.value["scale_down_factor"]
          scale_down_min_worker_fraction = yarn_config.value["scale_down_min_worker_fraction"]
          scale_up_factor                = yarn_config.value["scale_up_factor"]
          scale_up_min_worker_fraction   = yarn_config.value["scale_up_min_worker_fraction"]
        }
      }

    }
  }

  dynamic "secondary_worker_config" {
    for_each = var.secondary_worker_config
    content {
      max_instances = secondary_worker_config.value["max_instances"]
      min_instances = secondary_worker_config.value["min_instances"]
      weight        = secondary_worker_config.value["weight"]
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

  dynamic "worker_config" {
    for_each = var.worker_config
    content {
      max_instances = worker_config.value["max_instances"]
      min_instances = worker_config.value["min_instances"]
      weight        = worker_config.value["weight"]
    }
  }

}

