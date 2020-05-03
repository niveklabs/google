module "google_compute_autoscaler" {
  source = "./modules/google/r/google_compute_autoscaler"

  description = null
  name        = null
  project     = null
  target      = null
  zone        = null

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
