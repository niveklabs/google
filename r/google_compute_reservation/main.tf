terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_compute_reservation" "this" {
  description                   = var.description
  name                          = var.name
  project                       = var.project
  specific_reservation_required = var.specific_reservation_required
  zone                          = var.zone

  dynamic "specific_reservation" {
    for_each = var.specific_reservation
    content {
      count = specific_reservation.value["count"]

      dynamic "instance_properties" {
        for_each = specific_reservation.value.instance_properties
        content {
          machine_type     = instance_properties.value["machine_type"]
          min_cpu_platform = instance_properties.value["min_cpu_platform"]

          dynamic "guest_accelerators" {
            for_each = instance_properties.value.guest_accelerators
            content {
              accelerator_count = guest_accelerators.value["accelerator_count"]
              accelerator_type  = guest_accelerators.value["accelerator_type"]
            }
          }

          dynamic "local_ssds" {
            for_each = instance_properties.value.local_ssds
            content {
              disk_size_gb = local_ssds.value["disk_size_gb"]
              interface    = local_ssds.value["interface"]
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

