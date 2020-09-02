module "google_vpc_access_connector" {
  source = "./modules/google/r/google_vpc_access_connector"

  # ip_cidr_range - (required) is a type of string
  ip_cidr_range = null
  # max_throughput - (optional) is a type of number
  max_throughput = null
  # min_throughput - (optional) is a type of number
  min_throughput = null
  # name - (required) is a type of string
  name = null
  # network - (required) is a type of string
  network = null
  # project - (optional) is a type of string
  project = null
  # region - (required) is a type of string
  region = null

  timeouts = [{
    create = null
    delete = null
  }]
}
