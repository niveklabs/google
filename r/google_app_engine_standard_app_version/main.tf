terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_app_engine_standard_app_version" "this" {
  delete_service_on_destroy = var.delete_service_on_destroy
  env_variables             = var.env_variables
  instance_class            = var.instance_class
  noop_on_destroy           = var.noop_on_destroy
  project                   = var.project
  runtime                   = var.runtime
  runtime_api_version       = var.runtime_api_version
  service                   = var.service
  threadsafe                = var.threadsafe
  version_id                = var.version_id

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

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

