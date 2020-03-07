module "google_compute_instance_group_manager" {
  source = "./google/r/google_compute_instance_group_manager"

  base_instance_name = null
  description        = null
  instance_template  = null
  name               = null
  project            = null
  target_pools       = []
  target_size        = null
  wait_for_instances = null
  zone               = null

  auto_healing_policies = [{
    health_check      = null
    initial_delay_sec = null
  }]

  named_port = [{
    name = null
    port = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  update_policy = [{
    max_surge_fixed         = null
    max_surge_percent       = null
    max_unavailable_fixed   = null
    max_unavailable_percent = null
    min_ready_sec           = null
    minimal_action          = null
    type                    = null
  }]

  version = [{
    instance_template = null
    name              = null
    target_size = [{
      fixed   = null
      percent = null
    }]
  }]
}
