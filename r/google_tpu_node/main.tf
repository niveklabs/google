terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_tpu_node" "this" {
  accelerator_type   = var.accelerator_type
  cidr_block         = var.cidr_block
  description        = var.description
  labels             = var.labels
  name               = var.name
  network            = var.network
  project            = var.project
  tensorflow_version = var.tensorflow_version
  zone               = var.zone

  dynamic "scheduling_config" {
    for_each = var.scheduling_config
    content {
      preemptible = scheduling_config.value["preemptible"]
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

