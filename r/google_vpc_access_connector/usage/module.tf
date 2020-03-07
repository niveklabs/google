module "google_vpc_access_connector" {
  source = "./google/r/google_vpc_access_connector"

  ip_cidr_range  = null
  max_throughput = null
  min_throughput = null
  name           = null
  network        = null
  project        = null
  region         = null

  timeouts = [{
    create = null
    delete = null
  }]
}
