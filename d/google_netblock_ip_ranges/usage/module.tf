module "google_netblock_ip_ranges" {
  source = "./modules/google/d/google_netblock_ip_ranges"

  # range_type - (optional) is a type of string
  range_type = null
}
