terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_compute_security_policy" "this" {
  description = var.description
  name        = var.name
  project     = var.project

  dynamic "rule" {
    for_each = var.rule
    content {
      action      = rule.value["action"]
      description = rule.value["description"]
      preview     = rule.value["preview"]
      priority    = rule.value["priority"]

      dynamic "match" {
        for_each = rule.value.match
        content {
          versioned_expr = match.value["versioned_expr"]

          dynamic "config" {
            for_each = match.value.config
            content {
              src_ip_ranges = config.value["src_ip_ranges"]
            }
          }

          dynamic "expr" {
            for_each = match.value.expr
            content {
              expression = expr.value["expression"]
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

