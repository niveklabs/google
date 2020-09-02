terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_composer_environment" "this" {
  labels  = var.labels
  name    = var.name
  project = var.project
  region  = var.region

  dynamic "config" {
    for_each = var.config
    content {
      node_count = config.value["node_count"]

      dynamic "node_config" {
        for_each = config.value.node_config
        content {
          disk_size_gb         = node_config.value["disk_size_gb"]
          ip_allocation_policy = node_config.value["ip_allocation_policy"]
          machine_type         = node_config.value["machine_type"]
          network              = node_config.value["network"]
          oauth_scopes         = node_config.value["oauth_scopes"]
          service_account      = node_config.value["service_account"]
          subnetwork           = node_config.value["subnetwork"]
          tags                 = node_config.value["tags"]
          zone                 = node_config.value["zone"]
        }
      }

      dynamic "private_environment_config" {
        for_each = config.value.private_environment_config
        content {
          cloud_sql_ipv4_cidr_block  = private_environment_config.value["cloud_sql_ipv4_cidr_block"]
          enable_private_endpoint    = private_environment_config.value["enable_private_endpoint"]
          master_ipv4_cidr_block     = private_environment_config.value["master_ipv4_cidr_block"]
          web_server_ipv4_cidr_block = private_environment_config.value["web_server_ipv4_cidr_block"]
        }
      }

      dynamic "software_config" {
        for_each = config.value.software_config
        content {
          airflow_config_overrides = software_config.value["airflow_config_overrides"]
          env_variables            = software_config.value["env_variables"]
          image_version            = software_config.value["image_version"]
          pypi_packages            = software_config.value["pypi_packages"]
          python_version           = software_config.value["python_version"]
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

