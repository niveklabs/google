terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_healthcare_fhir_store_iam_member" "this" {
  fhir_store_id = var.fhir_store_id
  member        = var.member
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

