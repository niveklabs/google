module "google_compute_instance_group_manager" {
  source = "./modules/google/r/google_compute_instance_group_manager"

  # base_instance_name - (required) is a type of string
  base_instance_name = null
  # description - (optional) is a type of string
  description = null
  # instance_template - (optional) is a type of string
  instance_template = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # target_pools - (optional) is a type of set of string
  target_pools = []
  # target_size - (optional) is a type of number
  target_size = null
  # wait_for_instances - (optional) is a type of bool
  wait_for_instances = null
  # zone - (optional) is a type of string
  zone = null

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
