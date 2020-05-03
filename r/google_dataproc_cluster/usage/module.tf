module "google_dataproc_cluster" {
  source = "./modules/google/r/google_dataproc_cluster"

  labels  = {}
  name    = null
  project = null
  region  = null

  cluster_config = [{
    autoscaling_config = [{
      policy_uri = null
    }]
    bucket = null
    encryption_config = [{
      kms_key_name = null
    }]
    gce_cluster_config = [{
      internal_ip_only       = null
      metadata               = {}
      network                = null
      service_account        = null
      service_account_scopes = []
      subnetwork             = null
      tags                   = []
      zone                   = null
    }]
    initialization_action = [{
      script      = null
      timeout_sec = null
    }]
    master_config = [{
      accelerators = [{
        accelerator_count = null
        accelerator_type  = null
      }]
      disk_config = [{
        boot_disk_size_gb = null
        boot_disk_type    = null
        num_local_ssds    = null
      }]
      image_uri        = null
      instance_names   = []
      machine_type     = null
      min_cpu_platform = null
      num_instances    = null
    }]
    preemptible_worker_config = [{
      disk_config = [{
        boot_disk_size_gb = null
        boot_disk_type    = null
        num_local_ssds    = null
      }]
      instance_names = []
      num_instances  = null
    }]
    security_config = [{
      kerberos_config = [{
        cross_realm_trust_admin_server        = null
        cross_realm_trust_kdc                 = null
        cross_realm_trust_realm               = null
        cross_realm_trust_shared_password_uri = null
        enable_kerberos                       = null
        kdc_db_key_uri                        = null
        key_password_uri                      = null
        keystore_password_uri                 = null
        keystore_uri                          = null
        kms_key_uri                           = null
        realm                                 = null
        root_principal_password_uri           = null
        tgt_lifetime_hours                    = null
        truststore_password_uri               = null
        truststore_uri                        = null
      }]
    }]
    software_config = [{
      image_version       = null
      optional_components = []
      override_properties = {}
      properties          = {}
    }]
    staging_bucket = null
    worker_config = [{
      accelerators = [{
        accelerator_count = null
        accelerator_type  = null
      }]
      disk_config = [{
        boot_disk_size_gb = null
        boot_disk_type    = null
        num_local_ssds    = null
      }]
      image_uri        = null
      instance_names   = []
      machine_type     = null
      min_cpu_platform = null
      num_instances    = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
