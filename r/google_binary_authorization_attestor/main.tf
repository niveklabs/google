terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_binary_authorization_attestor" "this" {
  description = var.description
  name        = var.name
  project     = var.project

  dynamic "attestation_authority_note" {
    for_each = var.attestation_authority_note
    content {
      note_reference = attestation_authority_note.value["note_reference"]

      dynamic "public_keys" {
        for_each = attestation_authority_note.value.public_keys
        content {
          ascii_armored_pgp_public_key = public_keys.value["ascii_armored_pgp_public_key"]
          comment                      = public_keys.value["comment"]
          id                           = public_keys.value["id"]

          dynamic "pkix_public_key" {
            for_each = public_keys.value.pkix_public_key
            content {
              public_key_pem      = pkix_public_key.value["public_key_pem"]
              signature_algorithm = pkix_public_key.value["signature_algorithm"]
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

