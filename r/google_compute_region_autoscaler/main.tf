terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_compute_region_autoscaler" "this" {
  description = var.description
  name        = var.name
  project     = var.project
  region      = var.region
  target      = var.target

  dynamic "autoscaling_policy" {
    for_each = var.autoscaling_policy
    content {
      cooldown_period = autoscaling_policy.value["cooldown_period"]
      max_replicas    = autoscaling_policy.value["max_replicas"]
      min_replicas    = autoscaling_policy.value["min_replicas"]

      dynamic "cpu_utilization" {
        for_each = autoscaling_policy.value.cpu_utilization
        content {
          target = cpu_utilization.value["target"]
        }
      }

      dynamic "load_balancing_utilization" {
        for_each = autoscaling_policy.value.load_balancing_utilization
        content {
          target = load_balancing_utilization.value["target"]
        }
      }

      dynamic "metric" {
        for_each = autoscaling_policy.value.metric
        content {
          name   = metric.value["name"]
          target = metric.value["target"]
          type   = metric.value["type"]
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

