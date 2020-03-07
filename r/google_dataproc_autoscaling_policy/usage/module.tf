module "google_dataproc_autoscaling_policy" {
  source = "./google/r/google_dataproc_autoscaling_policy"

  location  = null
  policy_id = null
  project   = null

  basic_algorithm = [{
    cooldown_period = null
    yarn_config = [{
      graceful_decommission_timeout  = null
      scale_down_factor              = null
      scale_down_min_worker_fraction = null
      scale_up_factor                = null
      scale_up_min_worker_fraction   = null
    }]
  }]

  secondary_worker_config = [{
    max_instances = null
    min_instances = null
    weight        = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  worker_config = [{
    max_instances = null
    min_instances = null
    weight        = null
  }]
}
