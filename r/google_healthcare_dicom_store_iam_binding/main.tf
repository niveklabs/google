terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_healthcare_dicom_store_iam_binding" "this" {
  dicom_store_id = var.dicom_store_id
  members        = var.members
  role           = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

