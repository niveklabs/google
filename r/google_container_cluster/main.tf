terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

resource "google_container_cluster" "this" {
  additional_zones            = var.additional_zones
  cluster_ipv4_cidr           = var.cluster_ipv4_cidr
  default_max_pods_per_node   = var.default_max_pods_per_node
  description                 = var.description
  enable_binary_authorization = var.enable_binary_authorization
  enable_intranode_visibility = var.enable_intranode_visibility
  enable_kubernetes_alpha     = var.enable_kubernetes_alpha
  enable_legacy_abac          = var.enable_legacy_abac
  enable_tpu                  = var.enable_tpu
  initial_node_count          = var.initial_node_count
  location                    = var.location
  logging_service             = var.logging_service
  min_master_version          = var.min_master_version
  monitoring_service          = var.monitoring_service
  name                        = var.name
  network                     = var.network
  node_locations              = var.node_locations
  node_version                = var.node_version
  project                     = var.project
  region                      = var.region
  remove_default_node_pool    = var.remove_default_node_pool
  resource_labels             = var.resource_labels
  subnetwork                  = var.subnetwork
  zone                        = var.zone

  dynamic "addons_config" {
    for_each = var.addons_config
    content {

      dynamic "horizontal_pod_autoscaling" {
        for_each = addons_config.value.horizontal_pod_autoscaling
        content {
          disabled = horizontal_pod_autoscaling.value["disabled"]
        }
      }

      dynamic "http_load_balancing" {
        for_each = addons_config.value.http_load_balancing
        content {
          disabled = http_load_balancing.value["disabled"]
        }
      }

      dynamic "kubernetes_dashboard" {
        for_each = addons_config.value.kubernetes_dashboard
        content {
          disabled = kubernetes_dashboard.value["disabled"]
        }
      }

      dynamic "network_policy_config" {
        for_each = addons_config.value.network_policy_config
        content {
          disabled = network_policy_config.value["disabled"]
        }
      }

    }
  }

  dynamic "authenticator_groups_config" {
    for_each = var.authenticator_groups_config
    content {
      security_group = authenticator_groups_config.value["security_group"]
    }
  }

  dynamic "cluster_autoscaling" {
    for_each = var.cluster_autoscaling
    content {
      enabled = cluster_autoscaling.value["enabled"]

      dynamic "auto_provisioning_defaults" {
        for_each = cluster_autoscaling.value.auto_provisioning_defaults
        content {
          oauth_scopes    = auto_provisioning_defaults.value["oauth_scopes"]
          service_account = auto_provisioning_defaults.value["service_account"]
        }
      }

      dynamic "resource_limits" {
        for_each = cluster_autoscaling.value.resource_limits
        content {
          maximum       = resource_limits.value["maximum"]
          minimum       = resource_limits.value["minimum"]
          resource_type = resource_limits.value["resource_type"]
        }
      }

    }
  }

  dynamic "ip_allocation_policy" {
    for_each = var.ip_allocation_policy
    content {
      cluster_ipv4_cidr_block       = ip_allocation_policy.value["cluster_ipv4_cidr_block"]
      cluster_secondary_range_name  = ip_allocation_policy.value["cluster_secondary_range_name"]
      node_ipv4_cidr_block          = ip_allocation_policy.value["node_ipv4_cidr_block"]
      services_ipv4_cidr_block      = ip_allocation_policy.value["services_ipv4_cidr_block"]
      services_secondary_range_name = ip_allocation_policy.value["services_secondary_range_name"]
      subnetwork_name               = ip_allocation_policy.value["subnetwork_name"]
    }
  }

  dynamic "maintenance_policy" {
    for_each = var.maintenance_policy
    content {

      dynamic "daily_maintenance_window" {
        for_each = maintenance_policy.value.daily_maintenance_window
        content {
          start_time = daily_maintenance_window.value["start_time"]
        }
      }

    }
  }

  dynamic "master_auth" {
    for_each = var.master_auth
    content {
      password = master_auth.value["password"]
      username = master_auth.value["username"]

      dynamic "client_certificate_config" {
        for_each = master_auth.value.client_certificate_config
        content {
          issue_client_certificate = client_certificate_config.value["issue_client_certificate"]
        }
      }

    }
  }

  dynamic "master_authorized_networks_config" {
    for_each = var.master_authorized_networks_config
    content {

      dynamic "cidr_blocks" {
        for_each = master_authorized_networks_config.value.cidr_blocks
        content {
          cidr_block   = cidr_blocks.value["cidr_block"]
          display_name = cidr_blocks.value["display_name"]
        }
      }

    }
  }

  dynamic "network_policy" {
    for_each = var.network_policy
    content {
      enabled  = network_policy.value["enabled"]
      provider = network_policy.value["provider"]
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

  dynamic "node_pool" {
    for_each = var.node_pool
    content {
      initial_node_count = node_pool.value["initial_node_count"]
      max_pods_per_node  = node_pool.value["max_pods_per_node"]
      name               = node_pool.value["name"]
      name_prefix        = node_pool.value["name_prefix"]
      node_count         = node_pool.value["node_count"]
      version            = node_pool.value["version"]

      dynamic "autoscaling" {
        for_each = node_pool.value.autoscaling
        content {
          max_node_count = autoscaling.value["max_node_count"]
          min_node_count = autoscaling.value["min_node_count"]
        }
      }

      dynamic "management" {
        for_each = node_pool.value.management
        content {
          auto_repair  = management.value["auto_repair"]
          auto_upgrade = management.value["auto_upgrade"]
        }
      }

      dynamic "node_config" {
        for_each = node_pool.value.node_config
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

    }
  }

  dynamic "pod_security_policy_config" {
    for_each = var.pod_security_policy_config
    content {
      enabled = pod_security_policy_config.value["enabled"]
    }
  }

  dynamic "private_cluster_config" {
    for_each = var.private_cluster_config
    content {
      enable_private_endpoint = private_cluster_config.value["enable_private_endpoint"]
      enable_private_nodes    = private_cluster_config.value["enable_private_nodes"]
      master_ipv4_cidr_block  = private_cluster_config.value["master_ipv4_cidr_block"]
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

  dynamic "vertical_pod_autoscaling" {
    for_each = var.vertical_pod_autoscaling
    content {
      enabled = vertical_pod_autoscaling.value["enabled"]
    }
  }

}

