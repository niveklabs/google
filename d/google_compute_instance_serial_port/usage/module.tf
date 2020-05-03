module "google_compute_instance_serial_port" {
  source = "./modules/google/d/google_compute_instance_serial_port"

  instance = null
  port     = null
  project  = null
  zone     = null
}
