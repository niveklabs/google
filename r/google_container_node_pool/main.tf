terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_container_node_pool" "this" {
  cluster            = var.cluster
  initial_node_count = var.initial_node_count
  location           = var.location
  max_pods_per_node  = var.max_pods_per_node
  name               = var.name
  name_prefix        = var.name_prefix
  node_count         = var.node_count
  node_locations     = var.node_locations
  project            = var.project
  region             = var.region
  version            = var.version
  zone               = var.zone

  dynamic "autoscaling" {
    for_each = var.autoscaling
    content {
      max_node_count = autoscaling.value["max_node_count"]
      min_node_count = autoscaling.value["min_node_count"]
    }
  }

  dynamic "management" {
    for_each = var.management
    content {
      auto_repair  = management.value["auto_repair"]
      auto_upgrade = management.value["auto_upgrade"]
    }
  }

  dynamic "node_config" {
    for_each = var.node_config
    content {
      disk_size_gb      = node_config.value["disk_size_gb"]
      disk_type         = node_config.value["disk_type"]
      guest_accelerator = node_config.value["guest_accelerator"]
      image_type        = node_config.value["image_type"]
      labels            = node_config.value["labels"]
      local_ssd_count   = node_config.value["local_ssd_count"]
      machine_type      = node_config.value["machine_type"]
      metadata          = node_config.value["metadata"]
      min_cpu_platform  = node_config.value["min_cpu_platform"]
      oauth_scopes      = node_config.value["oauth_scopes"]
      preemptible       = node_config.value["preemptible"]
      service_account   = node_config.value["service_account"]
      tags              = node_config.value["tags"]
      taint             = node_config.value["taint"]

      dynamic "sandbox_config" {
        for_each = node_config.value.sandbox_config
        content {
          sandbox_type = sandbox_config.value["sandbox_type"]
        }
      }

      dynamic "shielded_instance_config" {
        for_each = node_config.value.shielded_instance_config
        content {
          enable_integrity_monitoring = shielded_instance_config.value["enable_integrity_monitoring"]
          enable_secure_boot          = shielded_instance_config.value["enable_secure_boot"]
        }
      }

      dynamic "workload_metadata_config" {
        for_each = node_config.value.workload_metadata_config
        content {
          node_metadata = workload_metadata_config.value["node_metadata"]
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

  dynamic "upgrade_settings" {
    for_each = var.upgrade_settings
    content {
      max_surge       = upgrade_settings.value["max_surge"]
      max_unavailable = upgrade_settings.value["max_unavailable"]
    }
  }

}

