terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_compute_instance" "this" {
  allow_stopping_for_update = var.allow_stopping_for_update
  can_ip_forward            = var.can_ip_forward
  deletion_protection       = var.deletion_protection
  description               = var.description
  desired_status            = var.desired_status
  enable_display            = var.enable_display
  guest_accelerator         = var.guest_accelerator
  hostname                  = var.hostname
  labels                    = var.labels
  machine_type              = var.machine_type
  metadata                  = var.metadata
  metadata_startup_script   = var.metadata_startup_script
  min_cpu_platform          = var.min_cpu_platform
  name                      = var.name
  project                   = var.project
  resource_policies         = var.resource_policies
  tags                      = var.tags
  zone                      = var.zone

  dynamic "attached_disk" {
    for_each = var.attached_disk
    content {
      device_name             = attached_disk.value["device_name"]
      disk_encryption_key_raw = attached_disk.value["disk_encryption_key_raw"]
      kms_key_self_link       = attached_disk.value["kms_key_self_link"]
      mode                    = attached_disk.value["mode"]
      source                  = attached_disk.value["source"]
    }
  }

  dynamic "boot_disk" {
    for_each = var.boot_disk
    content {
      auto_delete             = boot_disk.value["auto_delete"]
      device_name             = boot_disk.value["device_name"]
      disk_encryption_key_raw = boot_disk.value["disk_encryption_key_raw"]
      kms_key_self_link       = boot_disk.value["kms_key_self_link"]
      mode                    = boot_disk.value["mode"]
      source                  = boot_disk.value["source"]

      dynamic "initialize_params" {
        for_each = boot_disk.value.initialize_params
        content {
          image  = initialize_params.value["image"]
          labels = initialize_params.value["labels"]
          size   = initialize_params.value["size"]
          type   = initialize_params.value["type"]
        }
      }

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
          nat_ip                 = access_config.value["nat_ip"]
          network_tier           = access_config.value["network_tier"]
          public_ptr_domain_name = access_config.value["public_ptr_domain_name"]
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

  dynamic "scratch_disk" {
    for_each = var.scratch_disk
    content {
      interface = scratch_disk.value["interface"]
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
      update = timeouts.value["update"]
    }
  }

}

