terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_dataproc_cluster" "this" {
  labels  = var.labels
  name    = var.name
  project = var.project
  region  = var.region

  dynamic "cluster_config" {
    for_each = var.cluster_config
    content {
      staging_bucket = cluster_config.value["staging_bucket"]

      dynamic "autoscaling_config" {
        for_each = cluster_config.value.autoscaling_config
        content {
          policy_uri = autoscaling_config.value["policy_uri"]
        }
      }

      dynamic "encryption_config" {
        for_each = cluster_config.value.encryption_config
        content {
          kms_key_name = encryption_config.value["kms_key_name"]
        }
      }

      dynamic "gce_cluster_config" {
        for_each = cluster_config.value.gce_cluster_config
        content {
          internal_ip_only       = gce_cluster_config.value["internal_ip_only"]
          metadata               = gce_cluster_config.value["metadata"]
          network                = gce_cluster_config.value["network"]
          service_account        = gce_cluster_config.value["service_account"]
          service_account_scopes = gce_cluster_config.value["service_account_scopes"]
          subnetwork             = gce_cluster_config.value["subnetwork"]
          tags                   = gce_cluster_config.value["tags"]
          zone                   = gce_cluster_config.value["zone"]
        }
      }

      dynamic "initialization_action" {
        for_each = cluster_config.value.initialization_action
        content {
          script      = initialization_action.value["script"]
          timeout_sec = initialization_action.value["timeout_sec"]
        }
      }

      dynamic "master_config" {
        for_each = cluster_config.value.master_config
        content {
          image_uri        = master_config.value["image_uri"]
          machine_type     = master_config.value["machine_type"]
          min_cpu_platform = master_config.value["min_cpu_platform"]
          num_instances    = master_config.value["num_instances"]

          dynamic "accelerators" {
            for_each = master_config.value.accelerators
            content {
              accelerator_count = accelerators.value["accelerator_count"]
              accelerator_type  = accelerators.value["accelerator_type"]
            }
          }

          dynamic "disk_config" {
            for_each = master_config.value.disk_config
            content {
              boot_disk_size_gb = disk_config.value["boot_disk_size_gb"]
              boot_disk_type    = disk_config.value["boot_disk_type"]
              num_local_ssds    = disk_config.value["num_local_ssds"]
            }
          }

        }
      }

      dynamic "preemptible_worker_config" {
        for_each = cluster_config.value.preemptible_worker_config
        content {
          num_instances = preemptible_worker_config.value["num_instances"]

          dynamic "disk_config" {
            for_each = preemptible_worker_config.value.disk_config
            content {
              boot_disk_size_gb = disk_config.value["boot_disk_size_gb"]
              boot_disk_type    = disk_config.value["boot_disk_type"]
              num_local_ssds    = disk_config.value["num_local_ssds"]
            }
          }

        }
      }

      dynamic "security_config" {
        for_each = cluster_config.value.security_config
        content {

          dynamic "kerberos_config" {
            for_each = security_config.value.kerberos_config
            content {
              cross_realm_trust_admin_server        = kerberos_config.value["cross_realm_trust_admin_server"]
              cross_realm_trust_kdc                 = kerberos_config.value["cross_realm_trust_kdc"]
              cross_realm_trust_realm               = kerberos_config.value["cross_realm_trust_realm"]
              cross_realm_trust_shared_password_uri = kerberos_config.value["cross_realm_trust_shared_password_uri"]
              enable_kerberos                       = kerberos_config.value["enable_kerberos"]
              kdc_db_key_uri                        = kerberos_config.value["kdc_db_key_uri"]
              key_password_uri                      = kerberos_config.value["key_password_uri"]
              keystore_password_uri                 = kerberos_config.value["keystore_password_uri"]
              keystore_uri                          = kerberos_config.value["keystore_uri"]
              kms_key_uri                           = kerberos_config.value["kms_key_uri"]
              realm                                 = kerberos_config.value["realm"]
              root_principal_password_uri           = kerberos_config.value["root_principal_password_uri"]
              tgt_lifetime_hours                    = kerberos_config.value["tgt_lifetime_hours"]
              truststore_password_uri               = kerberos_config.value["truststore_password_uri"]
              truststore_uri                        = kerberos_config.value["truststore_uri"]
            }
          }

        }
      }

      dynamic "software_config" {
        for_each = cluster_config.value.software_config
        content {
          image_version       = software_config.value["image_version"]
          optional_components = software_config.value["optional_components"]
          override_properties = software_config.value["override_properties"]
        }
      }

      dynamic "worker_config" {
        for_each = cluster_config.value.worker_config
        content {
          image_uri        = worker_config.value["image_uri"]
          machine_type     = worker_config.value["machine_type"]
          min_cpu_platform = worker_config.value["min_cpu_platform"]
          num_instances    = worker_config.value["num_instances"]

          dynamic "accelerators" {
            for_each = worker_config.value.accelerators
            content {
              accelerator_count = accelerators.value["accelerator_count"]
              accelerator_type  = accelerators.value["accelerator_type"]
            }
          }

          dynamic "disk_config" {
            for_each = worker_config.value.disk_config
            content {
              boot_disk_size_gb = disk_config.value["boot_disk_size_gb"]
              boot_disk_type    = disk_config.value["boot_disk_type"]
              num_local_ssds    = disk_config.value["num_local_ssds"]
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

