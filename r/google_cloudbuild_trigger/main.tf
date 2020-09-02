terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_cloudbuild_trigger" "this" {
  description    = var.description
  disabled       = var.disabled
  filename       = var.filename
  ignored_files  = var.ignored_files
  included_files = var.included_files
  name           = var.name
  project        = var.project
  substitutions  = var.substitutions
  tags           = var.tags

  dynamic "build" {
    for_each = var.build
    content {
      images        = build.value["images"]
      logs_bucket   = build.value["logs_bucket"]
      queue_ttl     = build.value["queue_ttl"]
      substitutions = build.value["substitutions"]
      tags          = build.value["tags"]
      timeout       = build.value["timeout"]

      dynamic "secret" {
        for_each = build.value.secret
        content {
          kms_key_name = secret.value["kms_key_name"]
          secret_env   = secret.value["secret_env"]
        }
      }

      dynamic "source" {
        for_each = build.value.source
        content {

          dynamic "repo_source" {
            for_each = source.value.repo_source
            content {
              branch_name   = repo_source.value["branch_name"]
              commit_sha    = repo_source.value["commit_sha"]
              dir           = repo_source.value["dir"]
              invert_regex  = repo_source.value["invert_regex"]
              project_id    = repo_source.value["project_id"]
              repo_name     = repo_source.value["repo_name"]
              substitutions = repo_source.value["substitutions"]
              tag_name      = repo_source.value["tag_name"]
            }
          }

          dynamic "storage_source" {
            for_each = source.value.storage_source
            content {
              bucket     = storage_source.value["bucket"]
              generation = storage_source.value["generation"]
              object     = storage_source.value["object"]
            }
          }

        }
      }

      dynamic "step" {
        for_each = build.value.step
        content {
          args       = step.value["args"]
          dir        = step.value["dir"]
          entrypoint = step.value["entrypoint"]
          env        = step.value["env"]
          id         = step.value["id"]
          name       = step.value["name"]
          secret_env = step.value["secret_env"]
          timeout    = step.value["timeout"]
          timing     = step.value["timing"]
          wait_for   = step.value["wait_for"]

          dynamic "volumes" {
            for_each = step.value.volumes
            content {
              name = volumes.value["name"]
              path = volumes.value["path"]
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

  dynamic "trigger_template" {
    for_each = var.trigger_template
    content {
      branch_name  = trigger_template.value["branch_name"]
      commit_sha   = trigger_template.value["commit_sha"]
      dir          = trigger_template.value["dir"]
      invert_regex = trigger_template.value["invert_regex"]
      project_id   = trigger_template.value["project_id"]
      repo_name    = trigger_template.value["repo_name"]
      tag_name     = trigger_template.value["tag_name"]
    }
  }

}

