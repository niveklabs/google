terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_kms_crypto_key_iam_binding" "this" {
  crypto_key_id = var.crypto_key_id
  members       = var.members
  role          = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

