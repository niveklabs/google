terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_kms_key_ring_import_job" "this" {
  import_job_id    = var.import_job_id
  import_method    = var.import_method
  key_ring         = var.key_ring
  protection_level = var.protection_level

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

