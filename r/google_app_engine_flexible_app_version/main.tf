terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_app_engine_flexible_app_version" "this" {
  beta_settings                = var.beta_settings
  default_expiration           = var.default_expiration
  delete_service_on_destroy    = var.delete_service_on_destroy
  env_variables                = var.env_variables
  inbound_services             = var.inbound_services
  instance_class               = var.instance_class
  nobuild_files_regex          = var.nobuild_files_regex
  noop_on_destroy              = var.noop_on_destroy
  project                      = var.project
  runtime                      = var.runtime
  runtime_api_version          = var.runtime_api_version
  runtime_channel              = var.runtime_channel
  runtime_main_executable_path = var.runtime_main_executable_path
  service                      = var.service
  serving_status               = var.serving_status
  version_id                   = var.version_id

  dynamic "api_config" {
    for_each = var.api_config
    content {
      auth_fail_action = api_config.value["auth_fail_action"]
      login            = api_config.value["login"]
      script           = api_config.value["script"]
      security_level   = api_config.value["security_level"]
      url              = api_config.value["url"]
    }
  }

  dynamic "automatic_scaling" {
    for_each = var.automatic_scaling
    content {
      cool_down_period        = automatic_scaling.value["cool_down_period"]
      max_concurrent_requests = automatic_scaling.value["max_concurrent_requests"]
      max_idle_instances      = automatic_scaling.value["max_idle_instances"]
      max_pending_latency     = automatic_scaling.value["max_pending_latency"]
      max_total_instances     = automatic_scaling.value["max_total_instances"]
      min_idle_instances      = automatic_scaling.value["min_idle_instances"]
      min_pending_latency     = automatic_scaling.value["min_pending_latency"]
      min_total_instances     = automatic_scaling.value["min_total_instances"]

      dynamic "cpu_utilization" {
        for_each = automatic_scaling.value.cpu_utilization
        content {
          aggregation_window_length = cpu_utilization.value["aggregation_window_length"]
          target_utilization        = cpu_utilization.value["target_utilization"]
        }
      }

      dynamic "disk_utilization" {
        for_each = automatic_scaling.value.disk_utilization
        content {
          target_read_bytes_per_second  = disk_utilization.value["target_read_bytes_per_second"]
          target_read_ops_per_second    = disk_utilization.value["target_read_ops_per_second"]
          target_write_bytes_per_second = disk_utilization.value["target_write_bytes_per_second"]
          target_write_ops_per_second   = disk_utilization.value["target_write_ops_per_second"]
        }
      }

      dynamic "network_utilization" {
        for_each = automatic_scaling.value.network_utilization
        content {
          target_received_bytes_per_second   = network_utilization.value["target_received_bytes_per_second"]
          target_received_packets_per_second = network_utilization.value["target_received_packets_per_second"]
          target_sent_bytes_per_second       = network_utilization.value["target_sent_bytes_per_second"]
          target_sent_packets_per_second     = network_utilization.value["target_sent_packets_per_second"]
        }
      }

      dynamic "request_utilization" {
        for_each = automatic_scaling.value.request_utilization
        content {
          target_concurrent_requests      = request_utilization.value["target_concurrent_requests"]
          target_request_count_per_second = request_utilization.value["target_request_count_per_second"]
        }
      }

    }
  }

  dynamic "deployment" {
    for_each = var.deployment
    content {

      dynamic "cloud_build_options" {
        for_each = deployment.value.cloud_build_options
        content {
          app_yaml_path       = cloud_build_options.value["app_yaml_path"]
          cloud_build_timeout = cloud_build_options.value["cloud_build_timeout"]
        }
      }

      dynamic "container" {
        for_each = deployment.value.container
        content {
          image = container.value["image"]
        }
      }

      dynamic "files" {
        for_each = deployment.value.files
        content {
          name       = files.value["name"]
          sha1_sum   = files.value["sha1_sum"]
          source_url = files.value["source_url"]
        }
      }

      dynamic "zip" {
        for_each = deployment.value.zip
        content {
          files_count = zip.value["files_count"]
          source_url  = zip.value["source_url"]
        }
      }

    }
  }

  dynamic "endpoints_api_service" {
    for_each = var.endpoints_api_service
    content {
      config_id              = endpoints_api_service.value["config_id"]
      disable_trace_sampling = endpoints_api_service.value["disable_trace_sampling"]
      name                   = endpoints_api_service.value["name"]
      rollout_strategy       = endpoints_api_service.value["rollout_strategy"]
    }
  }

  dynamic "entrypoint" {
    for_each = var.entrypoint
    content {
      shell = entrypoint.value["shell"]
    }
  }

  dynamic "handlers" {
    for_each = var.handlers
    content {
      auth_fail_action            = handlers.value["auth_fail_action"]
      login                       = handlers.value["login"]
      redirect_http_response_code = handlers.value["redirect_http_response_code"]
      security_level              = handlers.value["security_level"]
      url_regex                   = handlers.value["url_regex"]

      dynamic "script" {
        for_each = handlers.value.script
        content {
          script_path = script.value["script_path"]
        }
      }

      dynamic "static_files" {
        for_each = handlers.value.static_files
        content {
          application_readable  = static_files.value["application_readable"]
          expiration            = static_files.value["expiration"]
          http_headers          = static_files.value["http_headers"]
          mime_type             = static_files.value["mime_type"]
          path                  = static_files.value["path"]
          require_matching_file = static_files.value["require_matching_file"]
          upload_path_regex     = static_files.value["upload_path_regex"]
        }
      }

    }
  }

  dynamic "liveness_check" {
    for_each = var.liveness_check
    content {
      check_interval    = liveness_check.value["check_interval"]
      failure_threshold = liveness_check.value["failure_threshold"]
      host              = liveness_check.value["host"]
      initial_delay     = liveness_check.value["initial_delay"]
      path              = liveness_check.value["path"]
      success_threshold = liveness_check.value["success_threshold"]
      timeout           = liveness_check.value["timeout"]
    }
  }

  dynamic "manual_scaling" {
    for_each = var.manual_scaling
    content {
      instances = manual_scaling.value["instances"]
    }
  }

  dynamic "network" {
    for_each = var.network
    content {
      forwarded_ports  = network.value["forwarded_ports"]
      instance_tag     = network.value["instance_tag"]
      name             = network.value["name"]
      session_affinity = network.value["session_affinity"]
      subnetwork       = network.value["subnetwork"]
    }
  }

  dynamic "readiness_check" {
    for_each = var.readiness_check
    content {
      app_start_timeout = readiness_check.value["app_start_timeout"]
      check_interval    = readiness_check.value["check_interval"]
      failure_threshold = readiness_check.value["failure_threshold"]
      host              = readiness_check.value["host"]
      path              = readiness_check.value["path"]
      success_threshold = readiness_check.value["success_threshold"]
      timeout           = readiness_check.value["timeout"]
    }
  }

  dynamic "resources" {
    for_each = var.resources
    content {
      cpu       = resources.value["cpu"]
      disk_gb   = resources.value["disk_gb"]
      memory_gb = resources.value["memory_gb"]

      dynamic "volumes" {
        for_each = resources.value.volumes
        content {
          name        = volumes.value["name"]
          size_gb     = volumes.value["size_gb"]
          volume_type = volumes.value["volume_type"]
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

  dynamic "vpc_access_connector" {
    for_each = var.vpc_access_connector
    content {
      name = vpc_access_connector.value["name"]
    }
  }

}

