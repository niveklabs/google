module "google_tpu_node" {
  source = "./modules/google/r/google_tpu_node"

  accelerator_type   = null
  cidr_block         = null
  description        = null
  labels             = {}
  name               = null
  network            = null
  project            = null
  tensorflow_version = null
  zone               = null

  scheduling_config = [{
    preemptible = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
