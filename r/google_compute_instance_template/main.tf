terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_compute_instance_template" "this" {
  can_ip_forward          = var.can_ip_forward
  description             = var.description
  enable_display          = var.enable_display
  instance_description    = var.instance_description
  labels                  = var.labels
  machine_type            = var.machine_type
  metadata                = var.metadata
  metadata_startup_script = var.metadata_startup_script
  min_cpu_platform        = var.min_cpu_platform
  name                    = var.name
  name_prefix             = var.name_prefix
  project                 = var.project
  region                  = var.region
  tags                    = var.tags

  dynamic "disk" {
    for_each = var.disk
    content {
      auto_delete  = disk.value["auto_delete"]
      boot         = disk.value["boot"]
      device_name  = disk.value["device_name"]
      disk_name    = disk.value["disk_name"]
      disk_size_gb = disk.value["disk_size_gb"]
      disk_type    = disk.value["disk_type"]
      interface    = disk.value["interface"]
      labels       = disk.value["labels"]
      mode         = disk.value["mode"]
      source       = disk.value["source"]
      source_image = disk.value["source_image"]
      type         = disk.value["type"]

      dynamic "disk_encryption_key" {
        for_each = disk.value.disk_encryption_key
        content {
          kms_key_self_link = disk_encryption_key.value["kms_key_self_link"]
        }
      }

    }
  }

  dynamic "guest_accelerator" {
    for_each = var.guest_accelerator
    content {
      count = guest_accelerator.value["count"]
      type  = guest_accelerator.value["type"]
    }
  }

  dynamic "network_interface" {
    for_each = var.network_interface
    content {
      network            = network_interface.value["network"]
      network_ip         = network_interface.value["network_ip"]
      subnetwork         = network_interface.value["subnetwork"]
      subnetwork_project = network_interface.value["subnetwork_project"]

      dynamic "access_config" {
        for_each = network_interface.value.access_config
        content {
          nat_ip       = access_config.value["nat_ip"]
          network_tier = access_config.value["network_tier"]
        }
      }

      dynamic "alias_ip_range" {
        for_each = network_interface.value.alias_ip_range
        content {
          ip_cidr_range         = alias_ip_range.value["ip_cidr_range"]
          subnetwork_range_name = alias_ip_range.value["subnetwork_range_name"]
        }
      }

    }
  }

  dynamic "scheduling" {
    for_each = var.scheduling
    content {
      automatic_restart   = scheduling.value["automatic_restart"]
      on_host_maintenance = scheduling.value["on_host_maintenance"]
      preemptible         = scheduling.value["preemptible"]

      dynamic "node_affinities" {
        for_each = scheduling.value.node_affinities
        content {
          key      = node_affinities.value["key"]
          operator = node_affinities.value["operator"]
          values   = node_affinities.value["values"]
        }
      }

    }
  }

  dynamic "service_account" {
    for_each = var.service_account
    content {
      email  = service_account.value["email"]
      scopes = service_account.value["scopes"]
    }
  }

  dynamic "shielded_instance_config" {
    for_each = var.shielded_instance_config
    content {
      enable_integrity_monitoring = shielded_instance_config.value["enable_integrity_monitoring"]
      enable_secure_boot          = shielded_instance_config.value["enable_secure_boot"]
      enable_vtpm                 = shielded_instance_config.value["enable_vtpm"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

