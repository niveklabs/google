terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_os_config_patch_deployment" "this" {
  description         = var.description
  duration            = var.duration
  patch_deployment_id = var.patch_deployment_id
  project             = var.project

  dynamic "instance_filter" {
    for_each = var.instance_filter
    content {
      all                    = instance_filter.value["all"]
      instance_name_prefixes = instance_filter.value["instance_name_prefixes"]
      instances              = instance_filter.value["instances"]
      zones                  = instance_filter.value["zones"]

      dynamic "group_labels" {
        for_each = instance_filter.value.group_labels
        content {
          labels = group_labels.value["labels"]
        }
      }

    }
  }

  dynamic "one_time_schedule" {
    for_each = var.one_time_schedule
    content {
      execute_time = one_time_schedule.value["execute_time"]
    }
  }

  dynamic "patch_config" {
    for_each = var.patch_config
    content {
      reboot_config = patch_config.value["reboot_config"]

      dynamic "apt" {
        for_each = patch_config.value.apt
        content {
          excludes           = apt.value["excludes"]
          exclusive_packages = apt.value["exclusive_packages"]
          type               = apt.value["type"]
        }
      }

      dynamic "goo" {
        for_each = patch_config.value.goo
        content {
          enabled = goo.value["enabled"]
        }
      }

      dynamic "post_step" {
        for_each = patch_config.value.post_step
        content {

          dynamic "linux_exec_step_config" {
            for_each = post_step.value.linux_exec_step_config
            content {
              allowed_success_codes = linux_exec_step_config.value["allowed_success_codes"]
              interpreter           = linux_exec_step_config.value["interpreter"]
              local_path            = linux_exec_step_config.value["local_path"]

              dynamic "gcs_object" {
                for_each = linux_exec_step_config.value.gcs_object
                content {
                  bucket            = gcs_object.value["bucket"]
                  generation_number = gcs_object.value["generation_number"]
                  object            = gcs_object.value["object"]
                }
              }

            }
          }

          dynamic "windows_exec_step_config" {
            for_each = post_step.value.windows_exec_step_config
            content {
              allowed_success_codes = windows_exec_step_config.value["allowed_success_codes"]
              interpreter           = windows_exec_step_config.value["interpreter"]
              local_path            = windows_exec_step_config.value["local_path"]

              dynamic "gcs_object" {
                for_each = windows_exec_step_config.value.gcs_object
                content {
                  bucket            = gcs_object.value["bucket"]
                  generation_number = gcs_object.value["generation_number"]
                  object            = gcs_object.value["object"]
                }
              }

            }
          }

        }
      }

      dynamic "pre_step" {
        for_each = patch_config.value.pre_step
        content {

          dynamic "linux_exec_step_config" {
            for_each = pre_step.value.linux_exec_step_config
            content {
              allowed_success_codes = linux_exec_step_config.value["allowed_success_codes"]
              interpreter           = linux_exec_step_config.value["interpreter"]
              local_path            = linux_exec_step_config.value["local_path"]

              dynamic "gcs_object" {
                for_each = linux_exec_step_config.value.gcs_object
                content {
                  bucket            = gcs_object.value["bucket"]
                  generation_number = gcs_object.value["generation_number"]
                  object            = gcs_object.value["object"]
                }
              }

            }
          }

          dynamic "windows_exec_step_config" {
            for_each = pre_step.value.windows_exec_step_config
            content {
              allowed_success_codes = windows_exec_step_config.value["allowed_success_codes"]
              interpreter           = windows_exec_step_config.value["interpreter"]
              local_path            = windows_exec_step_config.value["local_path"]

              dynamic "gcs_object" {
                for_each = windows_exec_step_config.value.gcs_object
                content {
                  bucket            = gcs_object.value["bucket"]
                  generation_number = gcs_object.value["generation_number"]
                  object            = gcs_object.value["object"]
                }
              }

            }
          }

        }
      }

      dynamic "windows_update" {
        for_each = patch_config.value.windows_update
        content {
          classifications   = windows_update.value["classifications"]
          excludes          = windows_update.value["excludes"]
          exclusive_patches = windows_update.value["exclusive_patches"]
        }
      }

      dynamic "yum" {
        for_each = patch_config.value.yum
        content {
          excludes           = yum.value["excludes"]
          exclusive_packages = yum.value["exclusive_packages"]
          minimal            = yum.value["minimal"]
          security           = yum.value["security"]
        }
      }

      dynamic "zypper" {
        for_each = patch_config.value.zypper
        content {
          categories        = zypper.value["categories"]
          excludes          = zypper.value["excludes"]
          exclusive_patches = zypper.value["exclusive_patches"]
          severities        = zypper.value["severities"]
          with_optional     = zypper.value["with_optional"]
          with_update       = zypper.value["with_update"]
        }
      }

    }
  }

  dynamic "recurring_schedule" {
    for_each = var.recurring_schedule
    content {
      end_time   = recurring_schedule.value["end_time"]
      start_time = recurring_schedule.value["start_time"]

      dynamic "monthly" {
        for_each = recurring_schedule.value.monthly
        content {
          month_day = monthly.value["month_day"]

          dynamic "week_day_of_month" {
            for_each = monthly.value.week_day_of_month
            content {
              day_of_week  = week_day_of_month.value["day_of_week"]
              week_ordinal = week_day_of_month.value["week_ordinal"]
            }
          }

        }
      }

      dynamic "time_of_day" {
        for_each = recurring_schedule.value.time_of_day
        content {
          hours   = time_of_day.value["hours"]
          minutes = time_of_day.value["minutes"]
          nanos   = time_of_day.value["nanos"]
          seconds = time_of_day.value["seconds"]
        }
      }

      dynamic "time_zone" {
        for_each = recurring_schedule.value.time_zone
        content {
          id      = time_zone.value["id"]
          version = time_zone.value["version"]
        }
      }

      dynamic "weekly" {
        for_each = recurring_schedule.value.weekly
        content {
          day_of_week = weekly.value["day_of_week"]
        }
      }

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

