module "google_container_node_pool" {
  source = "./modules/google/r/google_container_node_pool"

  # cluster - (required) is a type of string
  cluster = null
  # initial_node_count - (optional) is a type of number
  initial_node_count = null
  # location - (optional) is a type of string
  location = null
  # max_pods_per_node - (optional) is a type of number
  max_pods_per_node = null
  # name - (optional) is a type of string
  name = null
  # name_prefix - (optional) is a type of string
  name_prefix = null
  # node_count - (optional) is a type of number
  node_count = null
  # node_locations - (optional) is a type of set of string
  node_locations = []
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # version - (optional) is a type of string
  version = null
  # zone - (optional) is a type of string
  zone = null

  autoscaling = [{
    max_node_count = null
    min_node_count = null
  }]

  management = [{
    auto_repair  = null
    auto_upgrade = null
  }]

  node_config = [{
    disk_size_gb = null
    disk_type    = null
    guest_accelerator = [{
      count = null
      type  = null
    }]
    image_type       = null
    labels           = {}
    local_ssd_count  = null
    machine_type     = null
    metadata         = {}
    min_cpu_platform = null
    oauth_scopes     = []
    preemptible      = null
    sandbox_config = [{
      sandbox_type = null
    }]
    service_account = null
    shielded_instance_config = [{
      enable_integrity_monitoring = null
      enable_secure_boot          = null
    }]
    tags = []
    taint = [{
      effect = null
      key    = null
      value  = null
    }]
    workload_metadata_config = [{
      node_metadata = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  upgrade_settings = [{
    max_surge       = null
    max_unavailable = null
  }]
}
