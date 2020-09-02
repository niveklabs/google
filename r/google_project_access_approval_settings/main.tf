terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_project_access_approval_settings" "this" {
  notification_emails = var.notification_emails
  project             = var.project
  project_id          = var.project_id

  dynamic "enrolled_services" {
    for_each = var.enrolled_services
    content {
      cloud_product    = enrolled_services.value["cloud_product"]
      enrollment_level = enrolled_services.value["enrollment_level"]
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

