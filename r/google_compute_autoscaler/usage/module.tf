module "google_compute_autoscaler" {
  source = "./modules/google/r/google_compute_autoscaler"

  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # target - (required) is a type of string
  target = null
  # zone - (optional) is a type of string
  zone = null

  autoscaling_policy = [{
    cooldown_period = null
    cpu_utilization = [{
      target = null
    }]
    load_balancing_utilization = [{
      target = null
    }]
    max_replicas = null
    metric = [{
      name   = null
      target = null
      type   = null
    }]
    min_replicas = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
