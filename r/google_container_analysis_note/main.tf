terraform {
  required_providers {
    google = ">= 3.20.0"
  }
}

resource "google_container_analysis_note" "this" {
  name    = var.name
  project = var.project

  dynamic "attestation_authority" {
    for_each = var.attestation_authority
    content {

      dynamic "hint" {
        for_each = attestation_authority.value.hint
        content {
          human_readable_name = hint.value["human_readable_name"]
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

