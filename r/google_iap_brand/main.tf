terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

resource "google_iap_brand" "this" {
  application_title = var.application_title
  project           = var.project
  support_email     = var.support_email

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

