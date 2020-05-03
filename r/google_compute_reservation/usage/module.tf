module "google_compute_reservation" {
  source = "./modules/google/r/google_compute_reservation"

  description                   = null
  name                          = null
  project                       = null
  specific_reservation_required = null
  zone                          = null

  specific_reservation = [{
    count        = null
    in_use_count = null
    instance_properties = [{
      guest_accelerators = [{
        accelerator_count = null
        accelerator_type  = null
      }]
      local_ssds = [{
        disk_size_gb = null
        interface    = null
      }]
      machine_type     = null
      min_cpu_platform = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
