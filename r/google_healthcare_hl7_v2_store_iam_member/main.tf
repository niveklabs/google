terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_healthcare_hl7_v2_store_iam_member" "this" {
  hl7_v2_store_id = var.hl7_v2_store_id
  member          = var.member
  role            = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

