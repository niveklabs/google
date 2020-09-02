module "google_compute_instance_group_named_port" {
  source = "./modules/google/r/google_compute_instance_group_named_port"

  # group - (required) is a type of string
  group = null
  # name - (required) is a type of string
  name = null
  # port - (required) is a type of number
  port = null
  # project - (optional) is a type of string
  project = null
  # zone - (optional) is a type of string
  zone = null

  timeouts = [{
    create = null
    delete = null
  }]
}
