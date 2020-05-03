module "google_container_node_pool" {
  source = "./modules/google/r/google_container_node_pool"

  cluster            = null
  initial_node_count = null
  location           = null
  max_pods_per_node  = null
  name               = null
  name_prefix        = null
  node_count         = null
  project            = null
  region             = null
  version            = null
  zone               = null

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
}
