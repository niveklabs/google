module "google_compute_instance" {
  source = "./google/r/google_compute_instance"

  allow_stopping_for_update = null
  can_ip_forward            = null
  deletion_protection       = null
  description               = null
  desired_status            = null
  enable_display            = null
  guest_accelerator = [{
    count = null
    type  = null
  }]
  hostname                = null
  labels                  = {}
  machine_type            = null
  metadata                = {}
  metadata_startup_script = null
  min_cpu_platform        = null
  name                    = null
  project                 = null
  tags                    = []
  zone                    = null

  attached_disk = [{
    device_name                = null
    disk_encryption_key_raw    = null
    disk_encryption_key_sha256 = null
    kms_key_self_link          = null
    mode                       = null
    source                     = null
  }]

  boot_disk = [{
    auto_delete                = null
    device_name                = null
    disk_encryption_key_raw    = null
    disk_encryption_key_sha256 = null
    initialize_params = [{
      image  = null
      labels = {}
      size   = null
      type   = null
    }]
    kms_key_self_link = null
    mode              = null
    source            = null
  }]

  network_interface = [{
    access_config = [{
      nat_ip                 = null
      network_tier           = null
      public_ptr_domain_name = null
    }]
    alias_ip_range = [{
      ip_cidr_range         = null
      subnetwork_range_name = null
    }]
    name               = null
    network            = null
    network_ip         = null
    subnetwork         = null
    subnetwork_project = null
  }]

  scheduling = [{
    automatic_restart = null
    node_affinities = [{
      key      = null
      operator = null
      values   = []
    }]
    on_host_maintenance = null
    preemptible         = null
  }]

  scratch_disk = [{
    interface = null
  }]

  service_account = [{
    email  = null
    scopes = []
  }]

  shielded_instance_config = [{
    enable_integrity_monitoring = null
    enable_secure_boot          = null
    enable_vtpm                 = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
