module "google_compute_region_autoscaler" {
  source = "./google/r/google_compute_region_autoscaler"

  description = null
  name        = null
  project     = null
  region      = null
  target      = null

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
