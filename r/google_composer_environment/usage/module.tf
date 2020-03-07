module "google_composer_environment" {
  source = "./google/r/google_composer_environment"

  labels  = {}
  name    = null
  project = null
  region  = null

  config = [{
    airflow_uri    = null
    dag_gcs_prefix = null
    gke_cluster    = null
    node_config = [{
      disk_size_gb = null
      ip_allocation_policy = [{
        cluster_ipv4_cidr_block       = null
        cluster_secondary_range_name  = null
        services_ipv4_cidr_block      = null
        services_secondary_range_name = null
        use_ip_aliases                = null
      }]
      machine_type    = null
      network         = null
      oauth_scopes    = []
      service_account = null
      subnetwork      = null
      tags            = []
      zone            = null
    }]
    node_count = null
    private_environment_config = [{
      enable_private_endpoint = null
      master_ipv4_cidr_block  = null
    }]
    software_config = [{
      airflow_config_overrides = {}
      env_variables            = {}
      image_version            = null
      pypi_packages            = {}
      python_version           = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
