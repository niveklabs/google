module "google_compute_instance" {
  source = "./modules/google/r/google_compute_instance"

  # allow_stopping_for_update - (optional) is a type of bool
  allow_stopping_for_update = null
  # can_ip_forward - (optional) is a type of bool
  can_ip_forward = null
  # deletion_protection - (optional) is a type of bool
  deletion_protection = null
  # description - (optional) is a type of string
  description = null
  # desired_status - (optional) is a type of string
  desired_status = null
  # enable_display - (optional) is a type of bool
  enable_display = null
  # guest_accelerator - (optional) is a type of list of object
  guest_accelerator = [{
    count = null
    type  = null
  }]
  # hostname - (optional) is a type of string
  hostname = null
  # labels - (optional) is a type of map of string
  labels = {}
  # machine_type - (required) is a type of string
  machine_type = null
  # metadata - (optional) is a type of map of string
  metadata = {}
  # metadata_startup_script - (optional) is a type of string
  metadata_startup_script = null
  # min_cpu_platform - (optional) is a type of string
  min_cpu_platform = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # resource_policies - (optional) is a type of list of string
  resource_policies = []
  # tags - (optional) is a type of set of string
  tags = []
  # zone - (optional) is a type of string
  zone = null

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
