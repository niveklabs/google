terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_healthcare_fhir_store_iam_binding" "this" {
  fhir_store_id = var.fhir_store_id
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

