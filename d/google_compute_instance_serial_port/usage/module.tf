module "google_compute_instance_serial_port" {
  source = "./modules/google/d/google_compute_instance_serial_port"

  # instance - (required) is a type of string
  instance = null
  # port - (required) is a type of number
  port = null
  # project - (optional) is a type of string
  project = null
  # zone - (optional) is a type of string
  zone = null
}
