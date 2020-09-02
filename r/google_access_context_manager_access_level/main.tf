terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_access_context_manager_access_level" "this" {
  description = var.description
  name        = var.name
  parent      = var.parent
  title       = var.title

  dynamic "basic" {
    for_each = var.basic
    content {
      combining_function = basic.value["combining_function"]

      dynamic "conditions" {
        for_each = basic.value.conditions
        content {
          ip_subnetworks         = conditions.value["ip_subnetworks"]
          members                = conditions.value["members"]
          negate                 = conditions.value["negate"]
          regions                = conditions.value["regions"]
          required_access_levels = conditions.value["required_access_levels"]

          dynamic "device_policy" {
            for_each = conditions.value.device_policy
            content {
              allowed_device_management_levels = device_policy.value["allowed_device_management_levels"]
              allowed_encryption_statuses      = device_policy.value["allowed_encryption_statuses"]
              require_admin_approval           = device_policy.value["require_admin_approval"]
              require_corp_owned               = device_policy.value["require_corp_owned"]
              require_screen_lock              = device_policy.value["require_screen_lock"]

              dynamic "os_constraints" {
                for_each = device_policy.value.os_constraints
                content {
                  minimum_version = os_constraints.value["minimum_version"]
                  os_type         = os_constraints.value["os_type"]
                }
              }

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

