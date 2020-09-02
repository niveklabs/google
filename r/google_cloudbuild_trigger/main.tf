terraform {
  required_providers {
    google = ">= 3.31.0"
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

  dynamic "build" {
    for_each = var.build
    content {
      images  = build.value["images"]
      tags    = build.value["tags"]
      timeout = build.value["timeout"]

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

