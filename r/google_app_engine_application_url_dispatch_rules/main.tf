terraform {
  required_providers {
    google = ">= 3.22.0"
  }
}

resource "google_app_engine_application_url_dispatch_rules" "this" {
  project = var.project

  dynamic "dispatch_rules" {
    for_each = var.dispatch_rules
    content {
      domain  = dispatch_rules.value["domain"]
      path    = dispatch_rules.value["path"]
      service = dispatch_rules.value["service"]
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

