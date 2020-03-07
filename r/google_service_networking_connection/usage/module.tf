module "google_service_networking_connection" {
  source = "./google/r/google_service_networking_connection"

  network                 = null
  reserved_peering_ranges = []
  service                 = null
}
