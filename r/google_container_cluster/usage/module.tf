module "google_container_cluster" {
  source = "./modules/google/r/google_container_cluster"

  additional_zones            = []
  cluster_ipv4_cidr           = null
  default_max_pods_per_node   = null
  description                 = null
  enable_binary_authorization = null
  enable_intranode_visibility = null
  enable_kubernetes_alpha     = null
  enable_legacy_abac          = null
  enable_tpu                  = null
  initial_node_count          = null
  location                    = null
  logging_service             = null
  min_master_version          = null
  monitoring_service          = null
  name                        = null
  network                     = null
  node_locations              = []
  node_version                = null
  project                     = null
  region                      = null
  remove_default_node_pool    = null
  resource_labels             = {}
  subnetwork                  = null
  zone                        = null

  addons_config = [{
    horizontal_pod_autoscaling = [{
      disabled = null
    }]
    http_load_balancing = [{
      disabled = null
    }]
    kubernetes_dashboard = [{
      disabled = null
    }]
    network_policy_config = [{
      disabled = null
    }]
  }]

  authenticator_groups_config = [{
    security_group = null
  }]

  cluster_autoscaling = [{
    auto_provisioning_defaults = [{
      oauth_scopes    = []
      service_account = null
    }]
    enabled = null
    resource_limits = [{
      maximum       = null
      minimum       = null
      resource_type = null
    }]
  }]

  ip_allocation_policy = [{
    cluster_ipv4_cidr_block       = null
    cluster_secondary_range_name  = null
    node_ipv4_cidr_block          = null
    services_ipv4_cidr_block      = null
    services_secondary_range_name = null
    subnetwork_name               = null
  }]

  maintenance_policy = [{
    daily_maintenance_window = [{
      duration   = null
      start_time = null
    }]
  }]

  master_auth = [{
    client_certificate = null
    client_certificate_config = [{
      issue_client_certificate = null
    }]
    client_key             = null
    cluster_ca_certificate = null
    password               = null
    username               = null
  }]

  master_authorized_networks_config = [{
    cidr_blocks = [{
      cidr_block   = null
      display_name = null
    }]
  }]

  network_policy = [{
    enabled  = null
    provider = null
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

  node_pool = [{
    autoscaling = [{
      max_node_count = null
      min_node_count = null
    }]
    initial_node_count  = null
    instance_group_urls = []
    management = [{
      auto_repair  = null
      auto_upgrade = null
    }]
    max_pods_per_node = null
    name              = null
    name_prefix       = null
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
    node_count = null
    version    = null
  }]

  pod_security_policy_config = [{
    enabled = null
  }]

  private_cluster_config = [{
    enable_private_endpoint = null
    enable_private_nodes    = null
    master_ipv4_cidr_block  = null
    peering_name            = null
    private_endpoint        = null
    public_endpoint         = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  vertical_pod_autoscaling = [{
    enabled = null
  }]
}
