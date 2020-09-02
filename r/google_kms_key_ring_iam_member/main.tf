terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_kms_key_ring_iam_member" "this" {
  key_ring_id = var.key_ring_id
  member      = var.member
  role        = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

