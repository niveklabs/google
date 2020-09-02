terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_iap_tunnel_instance_iam_member" "this" {
  instance = var.instance
  member   = var.member
  project  = var.project
  role     = var.role
  zone     = var.zone

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

