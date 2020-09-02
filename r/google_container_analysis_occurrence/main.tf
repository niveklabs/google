terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

resource "google_container_analysis_occurrence" "this" {
  note_name    = var.note_name
  project      = var.project
  remediation  = var.remediation
  resource_uri = var.resource_uri

  dynamic "attestation" {
    for_each = var.attestation
    content {
      serialized_payload = attestation.value["serialized_payload"]

      dynamic "signatures" {
        for_each = attestation.value.signatures
        content {
          public_key_id = signatures.value["public_key_id"]
          signature     = signatures.value["signature"]
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

