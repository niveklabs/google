terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_access_context_manager_service_perimeter" "this" {
  description               = var.description
  name                      = var.name
  parent                    = var.parent
  perimeter_type            = var.perimeter_type
  title                     = var.title
  use_explicit_dry_run_spec = var.use_explicit_dry_run_spec

  dynamic "spec" {
    for_each = var.spec
    content {
      access_levels       = spec.value["access_levels"]
      resources           = spec.value["resources"]
      restricted_services = spec.value["restricted_services"]

      dynamic "vpc_accessible_services" {
        for_each = spec.value.vpc_accessible_services
        content {
          allowed_services   = vpc_accessible_services.value["allowed_services"]
          enable_restriction = vpc_accessible_services.value["enable_restriction"]
        }
      }

    }
  }

  dynamic "status" {
    for_each = var.status
    content {
      access_levels       = status.value["access_levels"]
      resources           = status.value["resources"]
      restricted_services = status.value["restricted_services"]

      dynamic "vpc_accessible_services" {
        for_each = status.value.vpc_accessible_services
        content {
          allowed_services   = vpc_accessible_services.value["allowed_services"]
          enable_restriction = vpc_accessible_services.value["enable_restriction"]
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

