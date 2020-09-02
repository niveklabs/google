terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_app_engine_standard_app_version" "this" {
  delete_service_on_destroy = var.delete_service_on_destroy
  env_variables             = var.env_variables
  inbound_services          = var.inbound_services
  instance_class            = var.instance_class
  noop_on_destroy           = var.noop_on_destroy
  project                   = var.project
  runtime                   = var.runtime
  runtime_api_version       = var.runtime_api_version
  service                   = var.service
  threadsafe                = var.threadsafe
  version_id                = var.version_id

  dynamic "automatic_scaling" {
    for_each = var.automatic_scaling
    content {
      max_concurrent_requests = automatic_scaling.value["max_concurrent_requests"]
      max_idle_instances      = automatic_scaling.value["max_idle_instances"]
      max_pending_latency     = automatic_scaling.value["max_pending_latency"]
      min_idle_instances      = automatic_scaling.value["min_idle_instances"]
      min_pending_latency     = automatic_scaling.value["min_pending_latency"]

      dynamic "standard_scheduler_settings" {
        for_each = automatic_scaling.value.standard_scheduler_settings
        content {
          max_instances                 = standard_scheduler_settings.value["max_instances"]
          min_instances                 = standard_scheduler_settings.value["min_instances"]
          target_cpu_utilization        = standard_scheduler_settings.value["target_cpu_utilization"]
          target_throughput_utilization = standard_scheduler_settings.value["target_throughput_utilization"]
        }
      }

    }
  }

  dynamic "basic_scaling" {
    for_each = var.basic_scaling
    content {
      idle_timeout  = basic_scaling.value["idle_timeout"]
      max_instances = basic_scaling.value["max_instances"]
    }
  }

  dynamic "deployment" {
    for_each = var.deployment
    content {

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

  dynamic "libraries" {
    for_each = var.libraries
    content {
      name    = libraries.value["name"]
      version = libraries.value["version"]
    }
  }

  dynamic "manual_scaling" {
    for_each = var.manual_scaling
    content {
      instances = manual_scaling.value["instances"]
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

