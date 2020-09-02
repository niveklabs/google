terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_compute_region_instance_group_manager" "this" {
  base_instance_name        = var.base_instance_name
  description               = var.description
  distribution_policy_zones = var.distribution_policy_zones
  name                      = var.name
  project                   = var.project
  region                    = var.region
  target_pools              = var.target_pools
  target_size               = var.target_size
  update_strategy           = var.update_strategy
  wait_for_instances        = var.wait_for_instances

  dynamic "auto_healing_policies" {
    for_each = var.auto_healing_policies
    content {
      health_check      = auto_healing_policies.value["health_check"]
      initial_delay_sec = auto_healing_policies.value["initial_delay_sec"]
    }
  }

  dynamic "named_port" {
    for_each = var.named_port
    content {
      name = named_port.value["name"]
      port = named_port.value["port"]
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

  dynamic "update_policy" {
    for_each = var.update_policy
    content {
      instance_redistribution_type = update_policy.value["instance_redistribution_type"]
      max_surge_fixed              = update_policy.value["max_surge_fixed"]
      max_surge_percent            = update_policy.value["max_surge_percent"]
      max_unavailable_fixed        = update_policy.value["max_unavailable_fixed"]
      max_unavailable_percent      = update_policy.value["max_unavailable_percent"]
      min_ready_sec                = update_policy.value["min_ready_sec"]
      minimal_action               = update_policy.value["minimal_action"]
      type                         = update_policy.value["type"]
    }
  }

  dynamic "version" {
    for_each = var.version
    content {
      instance_template = version.value["instance_template"]
      name              = version.value["name"]

      dynamic "target_size" {
        for_each = version.value.target_size
        content {
          fixed   = target_size.value["fixed"]
          percent = target_size.value["percent"]
        }
      }

    }
  }

}

