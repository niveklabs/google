module "google_container_cluster" {
  source = "./modules/google/r/google_container_cluster"

  # additional_zones - (optional) is a type of set of string
  additional_zones = []
  # cluster_ipv4_cidr - (optional) is a type of string
  cluster_ipv4_cidr = null
  # default_max_pods_per_node - (optional) is a type of number
  default_max_pods_per_node = null
  # description - (optional) is a type of string
  description = null
  # enable_binary_authorization - (optional) is a type of bool
  enable_binary_authorization = null
  # enable_intranode_visibility - (optional) is a type of bool
  enable_intranode_visibility = null
  # enable_kubernetes_alpha - (optional) is a type of bool
  enable_kubernetes_alpha = null
  # enable_legacy_abac - (optional) is a type of bool
  enable_legacy_abac = null
  # enable_shielded_nodes - (optional) is a type of bool
  enable_shielded_nodes = null
  # enable_tpu - (optional) is a type of bool
  enable_tpu = null
  # initial_node_count - (optional) is a type of number
  initial_node_count = null
  # location - (optional) is a type of string
  location = null
  # logging_service - (optional) is a type of string
  logging_service = null
  # min_master_version - (optional) is a type of string
  min_master_version = null
  # monitoring_service - (optional) is a type of string
  monitoring_service = null
  # name - (required) is a type of string
  name = null
  # network - (optional) is a type of string
  network = null
  # node_locations - (optional) is a type of set of string
  node_locations = []
  # node_version - (optional) is a type of string
  node_version = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # remove_default_node_pool - (optional) is a type of bool
  remove_default_node_pool = null
  # resource_labels - (optional) is a type of map of string
  resource_labels = {}
  # subnetwork - (optional) is a type of string
  subnetwork = null
  # zone - (optional) is a type of string
  zone = null

  addons_config = [{
    cloudrun_config = [{
      disabled = null
    }]
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

  database_encryption = [{
    key_name = null
    state    = null
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
    recurring_window = [{
      end_time   = null
      recurrence = null
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
    node_count     = null
    node_locations = []
    upgrade_settings = [{
      max_surge       = null
      max_unavailable = null
    }]
    version = null
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

  release_channel = [{
    channel = null
  }]

  resource_usage_export_config = [{
    bigquery_destination = [{
      dataset_id = null
    }]
    enable_network_egress_metering       = null
    enable_resource_consumption_metering = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  vertical_pod_autoscaling = [{
    enabled = null
  }]

  workload_identity_config = [{
    identity_namespace = null
  }]
}
