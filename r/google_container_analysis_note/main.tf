terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_container_analysis_note" "this" {
  expiration_time    = var.expiration_time
  long_description   = var.long_description
  name               = var.name
  project            = var.project
  related_note_names = var.related_note_names
  short_description  = var.short_description

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

  dynamic "related_url" {
    for_each = var.related_url
    content {
      label = related_url.value["label"]
      url   = related_url.value["url"]
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

