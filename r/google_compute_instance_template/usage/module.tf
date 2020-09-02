module "google_compute_instance_template" {
  source = "./modules/google/r/google_compute_instance_template"

  # can_ip_forward - (optional) is a type of bool
  can_ip_forward = null
  # description - (optional) is a type of string
  description = null
  # enable_display - (optional) is a type of bool
  enable_display = null
  # instance_description - (optional) is a type of string
  instance_description = null
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
  # name - (optional) is a type of string
  name = null
  # name_prefix - (optional) is a type of string
  name_prefix = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # tags - (optional) is a type of set of string
  tags = []

  disk = [{
    auto_delete = null
    boot        = null
    device_name = null
    disk_encryption_key = [{
      kms_key_self_link = null
    }]
    disk_name    = null
    disk_size_gb = null
    disk_type    = null
    interface    = null
    labels       = {}
    mode         = null
    source       = null
    source_image = null
    type         = null
  }]

  guest_accelerator = [{
    count = null
    type  = null
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

  service_account = [{
    email  = null
    scopes = []
  }]

  shielded_instance_config = [{
    enable_integrity_monitoring = null
    enable_secure_boot          = null
    enable_vtpm                 = null
  }]
}
